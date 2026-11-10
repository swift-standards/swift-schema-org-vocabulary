extension SchemaOrg.Range {

    public enum AssociatedAnatomy: SchemaOrg.Value, Swift.Hashable {

        case anatomicalStructure(SchemaOrg.AnatomicalStructure)

        case anatomicalSystem(SchemaOrg.AnatomicalSystem)

        case superficialAnatomy(SchemaOrg.SuperficialAnatomy)
    }
}

extension SchemaOrg.Range.AssociatedAnatomy {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .anatomicalStructure(let value):
            SchemaOrg.AnatomicalStructure.serialize(value)

        case .anatomicalSystem(let value):
            SchemaOrg.AnatomicalSystem.serialize(value)

        case .superficialAnatomy(let value):
            SchemaOrg.SuperficialAnatomy.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.AnatomicalStructure.deserialize(value) {
            return .anatomicalStructure(value)
        }
        if let value = SchemaOrg.AnatomicalSystem.deserialize(value) {
            return .anatomicalSystem(value)
        }
        if let value = SchemaOrg.SuperficialAnatomy.deserialize(value) {
            return .superficialAnatomy(value)
        }
        return nil
    }
}
