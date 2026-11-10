extension SchemaOrg.Range {

    public enum TypicalCreditsPerTerm: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral {

        case integer(Swift.Int)

        case structuredValue(SchemaOrg.StructuredValue)
    }
}

extension SchemaOrg.Range.TypicalCreditsPerTerm {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .integer(let value):
            Swift.Int.serialize(value)

        case .structuredValue(let value):
            SchemaOrg.StructuredValue.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.StructuredValue.deserialize(value) {
            return .structuredValue(value)
        }
        if let value = Swift.Int.deserialize(value) {
            return .integer(value)
        }
        return nil
    }

    public init(integerLiteral value: Swift.Int) {
        self = .integer(value)
    }
}
