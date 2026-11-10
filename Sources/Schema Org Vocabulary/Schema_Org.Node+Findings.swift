extension Schema_Org.Node {

    public var findings: [Schema_Org.Finding] {
        var findings: [Schema_Org.Finding] = []
        for entry in node.properties {
            guard let property = Schema_Org.Property.index[entry.key] else { continue }
            if !property.domains.isEmpty, !classes.isEmpty,
                !classes.contains(where: { type in property.domains.contains { type.isSubclass(of: $0) } })
            {
                findings.append(Schema_Org.Finding(property: property, kind: .domain))
            }
            for value in entry.values.map(Schema_Org.Value.init) where !property.ranges.isEmpty && !value.fits(property.ranges) {
                findings.append(Schema_Org.Finding(property: property, kind: .range(value)))
            }
        }
        return findings
    }
}

extension Schema_Org.Value {

    func fits(_ ranges: [Schema_Org.Class]) -> Bool {
        ranges.contains { range in
            range == .dataType || fits(range)
        }
    }

    func fits(_ range: Schema_Org.Class) -> Bool {
        if let member, member.classes.contains(where: { $0.isSubclass(of: range) }) {
            return true
        }
        switch value {
        case .node(let node):
            return node.types.isEmpty
                ? !range.isDataType || range.isSubclass(of: .url)
                : Schema_Org.Node(node: node).isInstance(of: range)

        case .literal(let literal):
            if literal.bool != nil { return range.isSubclass(of: .boolean) }
            if literal.number != nil { return range.isSubclass(of: .number) }
            return range.isSubclass(of: .number) ? number != nil : range.isDataType && !range.isSubclass(of: .boolean)

        case .list(let values):
            return values.allSatisfy { Schema_Org.Value($0).fits(range) }
        }
    }
}

extension Schema_Org.Class {

    var isDataType: Bool {
        self == .dataType || [Schema_Org.Class.text, .number, .boolean, .date, .dateTime, .time, .quantity].contains { isSubclass(of: $0) }
    }
}
