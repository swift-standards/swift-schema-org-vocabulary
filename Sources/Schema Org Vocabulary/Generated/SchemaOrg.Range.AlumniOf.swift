extension SchemaOrg.Range {

    public enum AlumniOf: SchemaOrg.Value, Swift.Hashable {

        case educationalOrganization(SchemaOrg.EducationalOrganization)

        case organization(SchemaOrg.Organization)
    }
}

extension SchemaOrg.Range.AlumniOf {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .educationalOrganization(let value):
            SchemaOrg.EducationalOrganization.serialize(value)

        case .organization(let value):
            SchemaOrg.Organization.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.EducationalOrganization.deserialize(value) {
            return .educationalOrganization(value)
        }
        if let value = SchemaOrg.Organization.deserialize(value) {
            return .organization(value)
        }
        return nil
    }
}
