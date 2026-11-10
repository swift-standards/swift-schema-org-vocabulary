extension SchemaOrg.Range {

    public enum InDefinedTermSet: SchemaOrg.Value, Swift.Hashable {

        case definedTermSet(SchemaOrg.DefinedTermSet)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.InDefinedTermSet {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTermSet(let value):
            SchemaOrg.DefinedTermSet.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DefinedTermSet.deserialize(value) {
            return .definedTermSet(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
