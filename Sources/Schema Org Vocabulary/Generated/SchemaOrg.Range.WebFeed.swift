extension SchemaOrg.Range {

    public enum WebFeed: SchemaOrg.Value, Swift.Hashable {

        case dataFeed(SchemaOrg.DataFeed)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.WebFeed {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .dataFeed(let value):
            SchemaOrg.DataFeed.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DataFeed.deserialize(value) {
            return .dataFeed(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
