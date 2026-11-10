extension SchemaOrg.Range {

    public enum Target: SchemaOrg.Value, Swift.Hashable {

        case entryPoint(SchemaOrg.EntryPoint)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.Target {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .entryPoint(let value):
            SchemaOrg.EntryPoint.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.EntryPoint.deserialize(value) {
            return .entryPoint(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
