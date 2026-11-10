extension SchemaOrg.Range {

    public enum ExpressedIn: SchemaOrg.Value, Swift.Hashable {

        case anatomicalStructure(SchemaOrg.AnatomicalStructure)

        case anatomicalSystem(SchemaOrg.AnatomicalSystem)

        case bioChemEntity(SchemaOrg.BioChemEntity)

        case definedTerm(SchemaOrg.DefinedTerm)
    }
}

extension SchemaOrg.Range.ExpressedIn {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .anatomicalStructure(let value):
            SchemaOrg.AnatomicalStructure.serialize(value)

        case .anatomicalSystem(let value):
            SchemaOrg.AnatomicalSystem.serialize(value)

        case .bioChemEntity(let value):
            SchemaOrg.BioChemEntity.serialize(value)

        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.AnatomicalStructure.deserialize(value) {
            return .anatomicalStructure(value)
        }
        if let value = SchemaOrg.AnatomicalSystem.deserialize(value) {
            return .anatomicalSystem(value)
        }
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
        }
        if let value = SchemaOrg.BioChemEntity.deserialize(value) {
            return .bioChemEntity(value)
        }
        return nil
    }
}
