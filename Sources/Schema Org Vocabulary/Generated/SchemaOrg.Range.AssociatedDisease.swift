extension SchemaOrg.Range {

    public enum AssociatedDisease: SchemaOrg.Value, Swift.Hashable {

        case medicalCondition(SchemaOrg.MedicalCondition)

        case propertyValue(SchemaOrg.PropertyValue)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.AssociatedDisease {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .medicalCondition(let value):
            SchemaOrg.MedicalCondition.serialize(value)

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
        if let value = SchemaOrg.MedicalCondition.deserialize(value) {
            return .medicalCondition(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
