extension SchemaOrg.Range {

    public enum HasMap: SchemaOrg.Value, Swift.Hashable {

        case map(SchemaOrg.Map)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.HasMap {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .map(let value):
            SchemaOrg.Map.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Map.deserialize(value) {
            return .map(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
