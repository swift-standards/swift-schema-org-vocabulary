extension SchemaOrg.Range {

    public enum FundedItem: SchemaOrg.Value, Swift.Hashable {

        case bioChemEntity(SchemaOrg.BioChemEntity)

        case creativeWork(SchemaOrg.CreativeWork)

        case event(SchemaOrg.Event)

        case medicalEntity(SchemaOrg.MedicalEntity)

        case organization(SchemaOrg.Organization)

        case person(SchemaOrg.Person)

        case product(SchemaOrg.Product)
    }
}

extension SchemaOrg.Range.FundedItem {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bioChemEntity(let value):
            SchemaOrg.BioChemEntity.serialize(value)

        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)

        case .event(let value):
            SchemaOrg.Event.serialize(value)

        case .medicalEntity(let value):
            SchemaOrg.MedicalEntity.serialize(value)

        case .organization(let value):
            SchemaOrg.Organization.serialize(value)

        case .person(let value):
            SchemaOrg.Person.serialize(value)

        case .product(let value):
            SchemaOrg.Product.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.BioChemEntity.deserialize(value) {
            return .bioChemEntity(value)
        }
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
        }
        if let value = SchemaOrg.Event.deserialize(value) {
            return .event(value)
        }
        if let value = SchemaOrg.MedicalEntity.deserialize(value) {
            return .medicalEntity(value)
        }
        if let value = SchemaOrg.Organization.deserialize(value) {
            return .organization(value)
        }
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        if let value = SchemaOrg.Product.deserialize(value) {
            return .product(value)
        }
        return nil
    }
}
