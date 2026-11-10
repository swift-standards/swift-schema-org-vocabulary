extension SchemaOrg.Range {

    public enum FreeShippingThreshold: SchemaOrg.Value, Swift.Hashable {

        case deliveryChargeSpecification(SchemaOrg.DeliveryChargeSpecification)

        case monetaryAmount(SchemaOrg.MonetaryAmount)
    }
}

extension SchemaOrg.Range.FreeShippingThreshold {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .deliveryChargeSpecification(let value):
            SchemaOrg.DeliveryChargeSpecification.serialize(value)

        case .monetaryAmount(let value):
            SchemaOrg.MonetaryAmount.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DeliveryChargeSpecification.deserialize(value) {
            return .deliveryChargeSpecification(value)
        }
        if let value = SchemaOrg.MonetaryAmount.deserialize(value) {
            return .monetaryAmount(value)
        }
        return nil
    }
}
