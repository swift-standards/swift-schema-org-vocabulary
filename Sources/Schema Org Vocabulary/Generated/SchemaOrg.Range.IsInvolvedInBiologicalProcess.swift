extension SchemaOrg.Range {

    public enum IsInvolvedInBiologicalProcess: SchemaOrg.Value, Swift.Hashable {

        case definedTerm(SchemaOrg.DefinedTerm)

        case propertyValue(SchemaOrg.PropertyValue)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.IsInvolvedInBiologicalProcess {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .propertyValue(let value):
            SchemaOrg.PropertyValue.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PropertyValue.deserialize(value) {
            return .propertyValue(value)
        }
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
