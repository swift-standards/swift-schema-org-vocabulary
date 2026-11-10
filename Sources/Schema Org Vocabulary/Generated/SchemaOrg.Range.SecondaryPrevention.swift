extension SchemaOrg.Range {

    public enum SecondaryPrevention: SchemaOrg.Value, Swift.Hashable {

        case drug(SchemaOrg.Drug)

        case drugClass(SchemaOrg.DrugClass)

        case lifestyleModification(SchemaOrg.LifestyleModification)

        case medicalTherapy(SchemaOrg.MedicalTherapy)
    }
}

extension SchemaOrg.Range.SecondaryPrevention {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .drug(let value):
            SchemaOrg.Drug.serialize(value)

        case .drugClass(let value):
            SchemaOrg.DrugClass.serialize(value)

        case .lifestyleModification(let value):
            SchemaOrg.LifestyleModification.serialize(value)

        case .medicalTherapy(let value):
            SchemaOrg.MedicalTherapy.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MedicalTherapy.deserialize(value) {
            return .medicalTherapy(value)
        }
        if let value = SchemaOrg.Drug.deserialize(value) {
            return .drug(value)
        }
        if let value = SchemaOrg.DrugClass.deserialize(value) {
            return .drugClass(value)
        }
        if let value = SchemaOrg.LifestyleModification.deserialize(value) {
            return .lifestyleModification(value)
        }
        return nil
    }
}
