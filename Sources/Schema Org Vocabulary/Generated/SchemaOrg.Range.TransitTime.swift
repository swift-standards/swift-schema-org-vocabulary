extension SchemaOrg.Range {

    public enum TransitTime: SchemaOrg.Value, Swift.Hashable {

        case quantitativeValue(SchemaOrg.QuantitativeValue)

        case servicePeriod(SchemaOrg.ServicePeriod)
    }
}

extension SchemaOrg.Range.TransitTime {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)

        case .servicePeriod(let value):
            SchemaOrg.ServicePeriod.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
        }
        if let value = SchemaOrg.ServicePeriod.deserialize(value) {
            return .servicePeriod(value)
        }
        return nil
    }
}
