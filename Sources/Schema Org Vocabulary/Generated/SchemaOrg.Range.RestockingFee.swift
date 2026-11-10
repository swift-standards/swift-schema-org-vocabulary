extension SchemaOrg.Range {

    public enum RestockingFee: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral, Swift.ExpressibleByFloatLiteral {

        case monetaryAmount(SchemaOrg.MonetaryAmount)

        case number(Swift.Double)
    }
}

extension SchemaOrg.Range.RestockingFee {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .monetaryAmount(let value):
            SchemaOrg.MonetaryAmount.serialize(value)

        case .number(let value):
            Swift.Double.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MonetaryAmount.deserialize(value) {
            return .monetaryAmount(value)
        }
        if let value = Swift.Double.deserialize(value) {
            return .number(value)
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
