extension SchemaOrg.Range {

    public enum TotalPaymentDue: SchemaOrg.Value, Swift.Hashable {

        case monetaryAmount(SchemaOrg.MonetaryAmount)

        case priceSpecification(SchemaOrg.PriceSpecification)
    }
}

extension SchemaOrg.Range.TotalPaymentDue {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .monetaryAmount(let value):
            SchemaOrg.MonetaryAmount.serialize(value)

        case .priceSpecification(let value):
            SchemaOrg.PriceSpecification.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MonetaryAmount.deserialize(value) {
            return .monetaryAmount(value)
        }
        if let value = SchemaOrg.PriceSpecification.deserialize(value) {
            return .priceSpecification(value)
        }
        return nil
    }
}
