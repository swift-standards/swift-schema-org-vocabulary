extension SchemaOrg.Range {

    public enum BeforeMedia: SchemaOrg.Value, Swift.Hashable {

        case mediaObject(SchemaOrg.MediaObject)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.BeforeMedia {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .mediaObject(let value):
            SchemaOrg.MediaObject.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MediaObject.deserialize(value) {
            return .mediaObject(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
