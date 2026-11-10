extension SchemaOrg.Range {

    public enum VehicleTransmission: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case qualitativeValue(SchemaOrg.QualitativeValue)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.VehicleTransmission {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .qualitativeValue(let value):
            SchemaOrg.QualitativeValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QualitativeValue.deserialize(value) {
            return .qualitativeValue(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
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
