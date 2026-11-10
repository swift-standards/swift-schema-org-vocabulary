extension SchemaOrg.Range {

    public enum ColorSwatch: SchemaOrg.Value, Swift.Hashable {

        case imageObject(SchemaOrg.ImageObject)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.ColorSwatch {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .imageObject(let value):
            SchemaOrg.ImageObject.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ImageObject.deserialize(value) {
            return .imageObject(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
