extension SchemaOrg.Range {

    public enum HasDigitalProductPassport: SchemaOrg.Value, Swift.Hashable {

        case digitalProductPassport(SchemaOrg.DigitalProductPassport)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.HasDigitalProductPassport {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .digitalProductPassport(let value):
            SchemaOrg.DigitalProductPassport.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DigitalProductPassport.deserialize(value) {
            return .digitalProductPassport(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
