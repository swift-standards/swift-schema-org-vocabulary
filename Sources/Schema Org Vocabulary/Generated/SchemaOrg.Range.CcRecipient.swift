extension SchemaOrg.Range {

    public enum CcRecipient: SchemaOrg.Value, Swift.Hashable {

        case contactPoint(SchemaOrg.ContactPoint)

        case organization(SchemaOrg.Organization)

        case person(SchemaOrg.Person)
    }
}

extension SchemaOrg.Range.CcRecipient {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .contactPoint(let value):
            SchemaOrg.ContactPoint.serialize(value)

        case .organization(let value):
            SchemaOrg.Organization.serialize(value)

        case .person(let value):
            SchemaOrg.Person.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ContactPoint.deserialize(value) {
            return .contactPoint(value)
        }
        if let value = SchemaOrg.Organization.deserialize(value) {
            return .organization(value)
        }
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        return nil
    }
}
