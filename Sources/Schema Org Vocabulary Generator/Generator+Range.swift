extension Generator {

    func rangeText(of property: Generator.Property) -> Swift.String {
        let name = Self.identifier(Self.upper(property.name))
        let cases = property.cases.sorted { Self.lower($0) < Self.lower($1) }
        let text = cases.contains("Text")
        let integer = cases.contains("Integer")
        let number = cases.contains("Number")
        var conformances = ["SchemaOrg.Value", "Swift.Hashable"]
        if text { conformances.append("Swift.ExpressibleByStringLiteral") }
        if integer || number { conformances.append("Swift.ExpressibleByIntegerLiteral") }
        if number { conformances.append("Swift.ExpressibleByFloatLiteral") }
        var output = "extension SchemaOrg.Range {\n\n"
        output += "    public enum \(name): \(conformances.joined(separator: ", ")) {\n"
        output += cases.map { "\n        case \(Self.caseName($0))(\(Self.swiftType(of: $0)))" }.joined(separator: "\n")
        output += "\n    }\n}\n\n"
        output += "extension SchemaOrg.Range.\(name) {\n\n"
        output += "    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {\n        switch value {\n"
        output += cases.map {
            "        case .\(Self.caseName($0))(let value):\n            \(Self.swiftType(of: $0)).serialize(value)"
        }.joined(separator: "\n\n")
        output += "\n        }\n    }\n\n"
        output += "    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {\n"
        for type in readingOrder(of: property.cases) {
            output += "        if let value = \(Self.swiftType(of: type)).deserialize(value) {\n"
            output += "            return .\(Self.caseName(type))(value)\n        }\n"
        }
        output += "        return nil\n    }\n"
        if text {
            output += "\n    public init(stringLiteral value: Swift.String) {\n        self = .text(value)\n    }\n"
        }
        if integer {
            output += "\n    public init(integerLiteral value: Swift.Int) {\n        self = .integer(value)\n    }\n"
        } else if number {
            output += "\n    public init(integerLiteral value: Swift.Int) {\n        self = .number(Swift.Double(value))\n    }\n"
        }
        if number {
            output += "\n    public init(floatLiteral value: Swift.Double) {\n        self = .number(value)\n    }\n"
        }
        return output + "}\n"
    }
}
