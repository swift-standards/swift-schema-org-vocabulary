extension Generator {

    var files: [Generator.File] {
        var files: [Generator.File] = []
        for type in types {
            files.append(.init(name: "SchemaOrg.\(type).Protocol.swift", text: protocolText(of: type)))
            if enumerations.contains(type) {
                files.append(.init(name: "SchemaOrg.\(type).swift", text: enumerationText(of: type)))
                files.append(.init(name: "SchemaOrg.\(type).Instance.swift", text: instanceText(of: type)))
            } else {
                files.append(.init(name: "SchemaOrg.\(type).swift", text: structText(of: type)))
            }
        }
        for property in properties.values.sorted(by: { $0.name < $1.name }) {
            if property.domains.count > 1 {
                files.append(.init(name: "SchemaOrg.Domain.\(Self.upper(property.name)).swift", text: domainText(of: property)))
            }
            if !property.cases.isEmpty {
                files.append(.init(name: "SchemaOrg.Range.\(Self.upper(property.name)).swift", text: rangeText(of: property)))
            }
        }
        files.append(.init(name: "SchemaOrg+Hierarchy.swift", text: hierarchyText))
        var keys: [Swift.String: [Swift.String]] = [:]
        for property in properties.values {
            keys[property.type, default: []].append(property.name)
        }
        for (type, names) in keys {
            files.append(.init(name: "SchemaOrg.Key where V == \(type).swift", text: keyText(of: type, names: names.sorted())))
        }
        return files
    }
}
