extension SchemaOrg.Range {

    public enum BillingDuration: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral, Swift.ExpressibleByFloatLiteral {

        case duration(ISO_8601.Duration)

        case number(Swift.Double)

        case quantitativeValue(SchemaOrg.QuantitativeValue)
    }
}

extension SchemaOrg.Range.BillingDuration {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .duration(let value):
            ISO_8601.Duration.serialize(value)

        case .number(let value):
            Swift.Double.serialize(value)

        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
        }
        if let value = Swift.Double.deserialize(value) {
            return .number(value)
        }
        if let value = ISO_8601.Duration.deserialize(value) {
            return .duration(value)
        }
        return nil
    }

    public init(integerLiteral value: Swift.Int) {
        self = .number(Swift.Double(value))
    }

    public init(floatLiteral value: Swift.Double) {
        self = .number(value)
    }
}
