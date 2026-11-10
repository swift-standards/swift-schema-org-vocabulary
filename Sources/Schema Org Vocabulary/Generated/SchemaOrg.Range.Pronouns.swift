extension SchemaOrg.Range {

    public enum Pronouns: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case definedTerm(SchemaOrg.DefinedTerm)

        case structuredValue(SchemaOrg.StructuredValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Pronouns {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .structuredValue(let value):
            SchemaOrg.StructuredValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
        }
        if let value = SchemaOrg.StructuredValue.deserialize(value) {
            return .structuredValue(value)
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
