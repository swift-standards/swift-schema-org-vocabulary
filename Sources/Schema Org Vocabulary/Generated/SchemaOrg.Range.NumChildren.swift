extension SchemaOrg.Range {

    public enum NumChildren: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral {

        case integer(Swift.Int)

        case quantitativeValue(SchemaOrg.QuantitativeValue)
    }
}

extension SchemaOrg.Range.NumChildren {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .integer(let value):
            Swift.Int.serialize(value)

        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
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
