extension SchemaOrg.Range {

    public enum Workload: SchemaOrg.Value, Swift.Hashable {

        case energy(Swift.String)

        case quantitativeValue(SchemaOrg.QuantitativeValue)
    }
}

extension SchemaOrg.Range.Workload {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .energy(let value):
            Swift.String.serialize(value)

        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .energy(value)
        }
        return nil
    }
}
