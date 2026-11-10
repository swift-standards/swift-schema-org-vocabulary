extension SchemaOrg.Range {

    public enum ProgrammingLanguage: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case computerLanguage(SchemaOrg.ComputerLanguage)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ProgrammingLanguage {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .computerLanguage(let value):
            SchemaOrg.ComputerLanguage.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ComputerLanguage.deserialize(value) {
            return .computerLanguage(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
