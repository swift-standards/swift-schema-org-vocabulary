extension SchemaOrg.Range {

    public enum Customer: SchemaOrg.Value, Swift.Hashable {

        case organization(SchemaOrg.Organization)

        case person(SchemaOrg.Person)
    }
}

extension SchemaOrg.Range.Customer {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .organization(let value):
            SchemaOrg.Organization.serialize(value)

        case .person(let value):
            SchemaOrg.Person.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Organization.deserialize(value) {
            return .organization(value)
        }
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        return nil
    }
}
