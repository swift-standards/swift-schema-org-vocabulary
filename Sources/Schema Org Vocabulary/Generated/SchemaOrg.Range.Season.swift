extension SchemaOrg.Range {

    public enum Season: SchemaOrg.Value, Swift.Hashable {

        case creativeWorkSeason(SchemaOrg.CreativeWorkSeason)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.Season {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .creativeWorkSeason(let value):
            SchemaOrg.CreativeWorkSeason.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CreativeWorkSeason.deserialize(value) {
            return .creativeWorkSeason(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
