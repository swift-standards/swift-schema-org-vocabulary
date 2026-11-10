extension SchemaOrg.Range {

    public enum MedicalAudience: SchemaOrg.Value, Swift.Hashable {

        case medicalAudience(SchemaOrg.MedicalAudience)

        case medicalAudienceType(SchemaOrg.MedicalAudienceType)
    }
}

extension SchemaOrg.Range.MedicalAudience {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .medicalAudience(let value):
            SchemaOrg.MedicalAudience.serialize(value)

        case .medicalAudienceType(let value):
            SchemaOrg.MedicalAudienceType.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MedicalAudienceType.deserialize(value) {
            return .medicalAudienceType(value)
        }
        if let value = SchemaOrg.MedicalAudience.deserialize(value) {
            return .medicalAudience(value)
        }
        return nil
    }
}
