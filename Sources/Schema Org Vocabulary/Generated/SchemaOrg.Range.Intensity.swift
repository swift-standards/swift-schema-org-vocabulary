extension SchemaOrg.Range {

    public enum Intensity: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case quantitativeValue(SchemaOrg.QuantitativeValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Intensity {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
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
