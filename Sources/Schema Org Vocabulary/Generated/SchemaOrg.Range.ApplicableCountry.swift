extension SchemaOrg.Range {

    public enum ApplicableCountry: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case country(SchemaOrg.Country)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ApplicableCountry {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .country(let value):
            SchemaOrg.Country.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Country.deserialize(value) {
            return .country(value)
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
