extension SchemaOrg.Range {

    public enum Weight: SchemaOrg.Value, Swift.Hashable {

        case mass(Swift.String)

        case quantitativeValue(SchemaOrg.QuantitativeValue)
    }
}

extension SchemaOrg.Range.Weight {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .mass(let value):
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
            return .mass(value)
        }
        return nil
    }
}
