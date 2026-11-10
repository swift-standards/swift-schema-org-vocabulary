extension Generator {

    func enumerationText(of type: Swift.String) -> Swift.String {
        let members = Swift.Set(vocabulary.members[type] ?? [])
        let subenumerations = Swift.Set(enumerations.filter { parents(of: $0).contains(type) })
        let names = (members.union(subenumerations)).sorted()
        let terms = names.filter(members.contains)
        let nested = names.filter(subenumerations.contains)
        let owner = Self.typeName(type)
        var text = "extension SchemaOrg {\n\n    public enum \(Self.identifier(type)): SchemaOrg.Value, Swift.Hashable {\n"
        for name in names {
            text += "\n        case \(Self.caseName(name))" + (members.contains(name) ? "" : "(\(Self.typeName(name)))") + "\n"
        }
        text += "\n        case instance(Instance)\n    }\n}\n\n"
        text += "extension \(owner) {\n\n    public var term: Swift.String? {\n        switch self {\n"
        text +=
            (names.map { name in
                members.contains(name)
                    ? "        case .\(Self.caseName(name)):\n            \"\(name)\""
                    : "        case .\(Self.caseName(name))(let value):\n            value.term"
            } + ["        case .instance:\n            nil"]).joined(separator: "\n\n")
        text += "\n        }\n    }\n\n    public init?(term: Swift.String) {\n"
        if !terms.isEmpty {
            text += "        switch term {\n"
            for name in terms {
                text += "        case \"\(name)\":\n            self = .\(Self.caseName(name))\n            return\n\n"
            }
            text += "        default:\n            break\n        }\n"
        }
        for name in nested {
            text += "        if let value = \(Self.typeName(name))(term: term) {\n"
            text += "            self = .\(Self.caseName(name))(value)\n            return\n        }\n"
        }
        text += "        return nil\n    }\n\n"
        text += "    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {\n        switch value {\n"
        text +=
            (names.map { name in
                members.contains(name)
                    ? "        case .\(Self.caseName(name)):\n            SchemaOrg.serialize(term: \"\(name)\")"
                    : "        case .\(Self.caseName(name))(let value):\n            \(Self.typeName(name)).serialize(value)"
            } + ["        case .instance(let value):\n            .node(value.node)"]).joined(separator: "\n\n")
        text += "\n        }\n    }\n\n"
        text += "    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {\n"
        text += "        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {\n"
        text += "            return member\n        }\n"
        if !nested.isEmpty {
            text += "        if SchemaOrg.isTyped(value) {\n"
            for name in nested {
                text += "            if let value = \(Self.typeName(name)).deserialize(value) {\n"
                text += "                return .\(Self.caseName(name))(value)\n            }\n"
            }
            text += "        }\n"
        }
        return text + "        return Instance.deserialize(value).map(Self.instance)\n    }\n}\n"
    }
}
