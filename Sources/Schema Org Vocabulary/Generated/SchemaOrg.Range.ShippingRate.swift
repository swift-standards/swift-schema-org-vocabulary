extension SchemaOrg.Range {

    public enum ShippingRate: SchemaOrg.Value, Swift.Hashable {

        case monetaryAmount(SchemaOrg.MonetaryAmount)

        case shippingRateSettings(SchemaOrg.ShippingRateSettings)
    }
}

extension SchemaOrg.Range.ShippingRate {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .monetaryAmount(let value):
            SchemaOrg.MonetaryAmount.serialize(value)

        case .shippingRateSettings(let value):
            SchemaOrg.ShippingRateSettings.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MonetaryAmount.deserialize(value) {
            return .monetaryAmount(value)
        }
        if let value = SchemaOrg.ShippingRateSettings.deserialize(value) {
            return .shippingRateSettings(value)
        }
        return nil
    }
}
