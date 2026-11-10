extension SchemaOrg.Range {

    public enum ConstraintProperty: SchemaOrg.Value, Swift.Hashable {

        case property(SchemaOrg.Property)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.ConstraintProperty {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .property(let value):
            SchemaOrg.Property.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Property.deserialize(value) {
            return .property(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
