extension Generator {

    func accessor(_ name: Swift.String) -> Swift.String {
        let type = properties[name]?.type ?? ""
        return "    public var \(Self.identifier(name)): \(type)? {\n"
            + "        get { self[first: \"\(name)\"] }\n"
            + "        set { self[first: \"\(name)\"] = newValue }\n"
            + "    }\n"
    }

    func protocolText(of type: Swift.String) -> Swift.String {
        let refined =
            parents(of: type).map(Self.protocolName)
            + (shared[type] ?? []).map { "SchemaOrg.Domain." + Self.identifier(Self.upper($0)) }
        let conformances = refined.isEmpty ? ["SchemaOrg.Resource"] : refined
        var text = "extension \(Self.typeName(type)) {\n\n"
        text +=
            conformances.count == 1
            ? "    public protocol `Protocol`: \(conformances[0]) {}\n}\n"
            : "    public protocol `Protocol`:\n" + conformances.map { "        " + $0 }.joined(separator: ",\n") + "\n    {}\n}\n"
        if let names = own[type] {
            text += "\nextension \(Self.protocolName(type)) {\n\n" + names.map(accessor).joined(separator: "\n") + "}\n"
        }
        return text
    }

    func domainText(of property: Generator.Property) -> Swift.String {
        let name = Self.identifier(Self.upper(property.name))
        return "extension SchemaOrg.Domain {\n\n    public protocol \(name): SchemaOrg.Resource {}\n}\n\n"
            + "extension SchemaOrg.Domain.\(name) {\n\n" + accessor(property.name) + "}\n"
    }

    func storage(_ name: Swift.String, conformance: Swift.String, type: Swift.String) -> Swift.String {
        "    public struct \(name): \(conformance), Swift.Hashable {\n\n"
            + "        public static let type = \"\(type)\"\n\n"
            + "        public var node: W3C_JSON_LD.Node\n\n"
            + "        public init(node: W3C_JSON_LD.Node) {\n            self.node = node\n        }\n    }\n}\n\n"
    }

    func initializer(of type: Swift.String, owner: Swift.String) -> Swift.String {
        let names = parameters(of: type)
        let lines =
            ["        id: Swift.String? = nil"]
            + names.map { "        \(Self.identifier($0)): \(properties[$0]?.type ?? "")? = nil" }
        return "extension \(owner) {\n\n    public init(\n" + lines.joined(separator: ",\n") + "\n    ) {\n"
            + "        self.init(node: W3C_JSON_LD.Node(id: id, types: [Self.type]))\n"
            + names.map { "        self.\($0) = \(Self.identifier($0))\n" }.joined()
            + "    }\n}\n"
    }

    func structText(of type: Swift.String) -> Swift.String {
        "extension SchemaOrg {\n\n"
            + storage(Self.identifier(type), conformance: Self.protocolName(type), type: type)
            + initializer(of: type, owner: Self.typeName(type))
    }

    func instanceText(of type: Swift.String) -> Swift.String {
        "extension \(Self.typeName(type)) {\n\n"
            + storage("Instance", conformance: Self.protocolName(type), type: type)
            + initializer(of: type, owner: Self.typeName(type) + ".Instance")
    }

    var hierarchyText: Swift.String {
        "extension SchemaOrg {\n\n    static let parents: [Swift.String: [Swift.String]] = [\n"
            + vocabulary.classes.sorted().map { name in
                "        \"\(name)\": [" + parents(of: name).map { "\"\($0)\"" }.joined(separator: ", ") + "],\n"
            }.joined()
            + "    ]\n}\n"
    }

    func keyText(of type: Swift.String, names: [Swift.String]) -> Swift.String {
        "extension SchemaOrg.Key where V == \(type) {\n\n"
            + names.map { "    public static var \(Self.identifier($0)): Self {\n        Self(\"\($0)\")\n    }\n" }
            .joined(separator: "\n")
            + "}\n"
    }
}
