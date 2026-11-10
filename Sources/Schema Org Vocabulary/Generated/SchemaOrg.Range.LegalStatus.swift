extension SchemaOrg.Range {

    public enum LegalStatus: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case drugLegalStatus(SchemaOrg.DrugLegalStatus)

        case medicalEnumeration(SchemaOrg.MedicalEnumeration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.LegalStatus {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .drugLegalStatus(let value):
            SchemaOrg.DrugLegalStatus.serialize(value)

        case .medicalEnumeration(let value):
            SchemaOrg.MedicalEnumeration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MedicalEnumeration.deserialize(value) {
            return .medicalEnumeration(value)
        }
        if let value = SchemaOrg.DrugLegalStatus.deserialize(value) {
            return .drugLegalStatus(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
