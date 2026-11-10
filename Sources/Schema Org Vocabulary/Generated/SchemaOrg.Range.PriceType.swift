extension SchemaOrg.Range {

    public enum PriceType: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case priceTypeEnumeration(SchemaOrg.PriceTypeEnumeration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.PriceType {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .priceTypeEnumeration(let value):
            SchemaOrg.PriceTypeEnumeration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PriceTypeEnumeration.deserialize(value) {
            return .priceTypeEnumeration(value)
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
