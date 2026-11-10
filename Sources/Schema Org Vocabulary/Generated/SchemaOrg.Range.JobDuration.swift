extension SchemaOrg.Range {

    public enum JobDuration: SchemaOrg.Value, Swift.Hashable {

        case duration(ISO_8601.Duration)

        case quantitativeValue(SchemaOrg.QuantitativeValue)
    }
}

extension SchemaOrg.Range.JobDuration {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .duration(let value):
            ISO_8601.Duration.serialize(value)

        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
        }
        if let value = ISO_8601.Duration.deserialize(value) {
            return .duration(value)
        }
        return nil
    }
}
