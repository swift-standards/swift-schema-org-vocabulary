extension SchemaOrg.Range {

    public enum InCodeSet: SchemaOrg.Value, Swift.Hashable {

        case categoryCodeSet(SchemaOrg.CategoryCodeSet)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.InCodeSet {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .categoryCodeSet(let value):
            SchemaOrg.CategoryCodeSet.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CategoryCodeSet.deserialize(value) {
            return .categoryCodeSet(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
