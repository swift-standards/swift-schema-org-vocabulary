extension SchemaOrg.Range {

    public enum AvailableService: SchemaOrg.Value, Swift.Hashable {

        case medicalProcedure(SchemaOrg.MedicalProcedure)

        case medicalTest(SchemaOrg.MedicalTest)

        case medicalTherapy(SchemaOrg.MedicalTherapy)
    }
}

extension SchemaOrg.Range.AvailableService {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .medicalProcedure(let value):
            SchemaOrg.MedicalProcedure.serialize(value)

        case .medicalTest(let value):
            SchemaOrg.MedicalTest.serialize(value)

        case .medicalTherapy(let value):
            SchemaOrg.MedicalTherapy.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MedicalTherapy.deserialize(value) {
            return .medicalTherapy(value)
        }
        if let value = SchemaOrg.MedicalProcedure.deserialize(value) {
            return .medicalProcedure(value)
        }
        if let value = SchemaOrg.MedicalTest.deserialize(value) {
            return .medicalTest(value)
        }
        return nil
    }
}
