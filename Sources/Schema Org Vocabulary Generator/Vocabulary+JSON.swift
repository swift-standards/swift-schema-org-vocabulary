import RFC_8259

extension Vocabulary {

    init(json bytes: [Byte]) throws(Vocabulary.Error) {
        let document: RFC_8259.Value
        do {
            document = try RFC_8259.Decode.parse(bytes)
        } catch {
            throw .json(error)
        }
        guard let graph = document["@graph"]?.array else { throw .graph }
        var classes: Swift.Set<Swift.String> = []
        var superclasses: [Swift.String: [Swift.String]] = [:]
        var members: [Swift.String: [Swift.String]] = [:]
        var dataTypes: Swift.Set<Swift.String> = []
        var nodes: [(name: Swift.String, node: RFC_8259.Value)] = []
        for node in graph {
            guard let name = node["@id"]?.string.flatMap(Self.term(of:)) else { continue }
            let types = Self.identifiers(node["@type"])
            if types.contains("rdfs:Class") {
                classes.insert(name)
                if types.contains(Self.prefix + "DataType") {
                    dataTypes.insert(name)
                }
                superclasses[name] = Self.identifiers(node["rdfs:subClassOf"]).compactMap(Self.term(of:))
            } else if types.contains("rdf:Property") {
                nodes.append((name, node))
            } else {
                members[name, default: []].append(contentsOf: types.compactMap(Self.term(of:)))
            }
        }
        self.classes = classes
        self.parents = superclasses.mapValues { $0.filter(classes.contains).sorted() }
        self.members = members.mapValues { $0.filter(classes.contains).sorted() }.filter { !$0.value.isEmpty }
        self.dataTypes = dataTypes
        self.properties = nodes.sorted { $0.name < $1.name }.map { name, node in
            Vocabulary.Property(
                name: name,
                range: Swift.Set(Self.identifiers(node["schema:rangeIncludes"]).compactMap(Self.term(of:)))
                    .filter(classes.contains).sorted(),
                domains: Swift.Set(Self.identifiers(node["schema:domainIncludes"]).compactMap(Self.term(of:)))
                    .filter(classes.contains).sorted()
            )
        }
    }
}

extension Vocabulary {

    static let prefix = "schema:"

    static func term(of identifier: Swift.String) -> Swift.String? {
        identifier.hasPrefix(prefix) ? Swift.String(identifier.dropFirst(prefix.count)) : nil
    }

    static func identifiers(_ value: RFC_8259.Value?) -> [Swift.String] {
        switch value {
        case .string(let string):
            [string]

        case .object:
            [value?["@id"]?.string].compactMap { $0 }

        case .array(let array):
            array.flatMap { element in
                element.string.map { [$0] } ?? [element["@id"]?.string].compactMap { $0 }
            }

        default:
            []
        }
    }
}
