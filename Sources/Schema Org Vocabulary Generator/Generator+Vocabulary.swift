extension Generator {

    init(vocabulary: Vocabulary) {
        self.vocabulary = vocabulary
        var depths: [Swift.String: Swift.Int] = [:]
        for name in vocabulary.classes.sorted() {
            Self.depth(of: name, parents: vocabulary.parents, in: &depths)
        }
        self.depths = depths
        self.types = vocabulary.classes.filter { Self.data[$0] == nil }.sorted()
        self.enumerations = Swift.Set(
            types.filter { Self.isA($0, "Enumeration", parents: vocabulary.parents) }
        )
        var properties: [Swift.String: Generator.Property] = [:]
        var own: [Swift.String: [Swift.String]] = [:]
        var shared: [Swift.String: [Swift.String]] = [:]
        for property in vocabulary.properties {
            let domains = property.domains.filter { Self.data[$0] == nil }
            guard !property.range.isEmpty, !domains.isEmpty else { continue }
            let single = property.range.count == 1 ? property.range.first : nil
            properties[property.name] = Generator.Property(
                name: property.name,
                type: single.map(Self.swiftType(of:)) ?? "SchemaOrg.Range." + Self.upper(property.name),
                cases: single == nil ? property.range : [],
                domains: domains
            )
            if domains.count == 1 {
                own[domains[0], default: []].append(property.name)
            } else {
                for domain in domains {
                    shared[domain, default: []].append(property.name)
                }
            }
        }
        self.properties = properties
        self.own = own
        self.shared = shared
    }
}

extension Generator {

    @discardableResult
    static func depth(
        of name: Swift.String,
        parents: [Swift.String: [Swift.String]],
        in depths: inout [Swift.String: Swift.Int]
    ) -> Swift.Int {
        if let depth = depths[name] { return depth }
        var depth = 0
        for parent in parents[name] ?? [] {
            depth = Swift.max(depth, 1 + Self.depth(of: parent, parents: parents, in: &depths))
        }
        depths[name] = depth
        return depth
    }

    static func isA(_ name: Swift.String, _ ancestor: Swift.String, parents: [Swift.String: [Swift.String]]) -> Swift.Bool {
        name == ancestor || (parents[name] ?? []).contains { isA($0, ancestor, parents: parents) }
    }

    func parents(of name: Swift.String) -> [Swift.String] {
        vocabulary.parents[name] ?? []
    }

    func ancestors(of name: Swift.String) -> [Swift.String] {
        var seen: Swift.Set<Swift.String> = [name]
        var order: [Swift.String] = []
        var frontier = [name]
        while !frontier.isEmpty {
            var next: [Swift.String] = []
            for type in frontier {
                for parent in parents(of: type) where seen.insert(parent).inserted {
                    order.append(parent)
                    next.append(parent)
                }
            }
            frontier = next
        }
        return order
    }

    func properties(of name: Swift.String) -> [Swift.String] {
        ((own[name] ?? []) + (shared[name] ?? [])).sorted()
    }

    func parameters(of name: Swift.String) -> [Swift.String] {
        var groups: [[Swift.String]] = name == "Thing" ? [] : [properties(of: "Thing")]
        groups.append(properties(of: name))
        for ancestor in ancestors(of: name) where ancestor != "Thing" {
            groups.append(properties(of: ancestor))
        }
        var seen: Swift.Set<Swift.String> = []
        return groups.joined().filter { seen.insert($0).inserted }
    }

    func readingOrder(of cases: [Swift.String]) -> [Swift.String] {
        let specific: (Swift.String, Swift.String) -> Swift.Bool = { left, right in
            let (a, b) = (depths[left] ?? 0, depths[right] ?? 0)
            return a == b ? left < right : a > b
        }
        let enumerated = cases.filter { enumerations.contains($0) }.sorted(by: specific)
        let typed = cases.filter { !enumerations.contains($0) && Self.data[$0] == nil }.sorted(by: specific)
        let ordered = Self.dataOrder.filter(cases.contains)
        let rest = cases.filter { Self.data[$0] != nil && !Self.dataOrder.contains($0) }.sorted()
        return enumerated + typed + ordered + rest
    }
}
