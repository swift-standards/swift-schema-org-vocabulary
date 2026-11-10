extension SchemaOrg.Range {

    public enum GameLocation: SchemaOrg.Value, Swift.Hashable {

        case place(SchemaOrg.Place)

        case postalAddress(SchemaOrg.PostalAddress)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.GameLocation {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .place(let value):
            SchemaOrg.Place.serialize(value)

        case .postalAddress(let value):
            SchemaOrg.PostalAddress.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PostalAddress.deserialize(value) {
            return .postalAddress(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
