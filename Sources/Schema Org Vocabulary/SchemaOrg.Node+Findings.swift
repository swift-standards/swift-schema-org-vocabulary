extension SchemaOrg.Node {

    public var findings: [SchemaOrg.Finding] {
        var findings: [SchemaOrg.Finding] = []
        for entry in node.properties {
            guard let property = SchemaOrg.Property.index[entry.key] else { continue }
            if !property.domains.isEmpty, !classes.isEmpty,
                !classes.contains(where: { type in property.domains.contains { type.isSubclass(of: $0) } })
            {
                findings.append(SchemaOrg.Finding(property: property, kind: .domain))
            }
            for value in entry.values.map(SchemaOrg.Value.init) where !property.ranges.isEmpty && !value.fits(property.ranges) {
                findings.append(SchemaOrg.Finding(property: property, kind: .range(value)))
            }
        }
        return findings
    }
}

extension SchemaOrg.Value {

    func fits(_ ranges: [SchemaOrg.Class]) -> Bool {
        ranges.contains { range in
            range == .dataType || fits(range)
        }
    }

    func fits(_ range: SchemaOrg.Class) -> Bool {
        if let member, member.classes.contains(where: { $0.isSubclass(of: range) }) {
            return true
        }
        switch value {
        case .node(let node):
            return node.types.isEmpty
                ? !range.isDataType || range.isSubclass(of: .url)
                : SchemaOrg.Node(node: node).isInstance(of: range)

        case .literal(let literal):
            if literal.bool != nil { return range.isSubclass(of: .boolean) }
            if literal.number != nil { return range.isSubclass(of: .number) }
            return range.isSubclass(of: .number) ? number != nil : range.isDataType && !range.isSubclass(of: .boolean)

        case .list(let values):
            return values.allSatisfy { SchemaOrg.Value($0).fits(range) }
        }
    }
}

extension SchemaOrg.Class {

    var isDataType: Bool {
        self == .dataType || [SchemaOrg.Class.text, .number, .boolean, .date, .dateTime, .time, .quantity].contains { isSubclass(of: $0) }
    }
}
