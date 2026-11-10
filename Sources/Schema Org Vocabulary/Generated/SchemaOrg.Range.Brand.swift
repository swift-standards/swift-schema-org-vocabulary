extension SchemaOrg.Range {

    public enum Brand: SchemaOrg.Value, Swift.Hashable {

        case brand(SchemaOrg.Brand)

        case organization(SchemaOrg.Organization)
    }
}

extension SchemaOrg.Range.Brand {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .brand(let value):
            SchemaOrg.Brand.serialize(value)

        case .organization(let value):
            SchemaOrg.Organization.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Brand.deserialize(value) {
            return .brand(value)
        }
        if let value = SchemaOrg.Organization.deserialize(value) {
            return .organization(value)
        }
        return nil
    }
}
