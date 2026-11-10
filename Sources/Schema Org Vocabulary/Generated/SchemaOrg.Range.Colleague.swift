extension SchemaOrg.Range {

    public enum Colleague: SchemaOrg.Value, Swift.Hashable {

        case person(SchemaOrg.Person)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.Colleague {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .person(let value):
            SchemaOrg.Person.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
