extension SchemaOrg.Range {

    public enum TotalPrice: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral, Swift.ExpressibleByIntegerLiteral, Swift.ExpressibleByFloatLiteral {

        case number(Swift.Double)

        case priceSpecification(SchemaOrg.PriceSpecification)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.TotalPrice {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .number(let value):
            Swift.Double.serialize(value)

        case .priceSpecification(let value):
            SchemaOrg.PriceSpecification.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PriceSpecification.deserialize(value) {
            return .priceSpecification(value)
        }
        if let value = Swift.Double.deserialize(value) {
            return .number(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }

    public init(integerLiteral value: Swift.Int) {
        self = .number(Swift.Double(value))
    }

    public init(floatLiteral value: Swift.Double) {
        self = .number(value)
    }
}
