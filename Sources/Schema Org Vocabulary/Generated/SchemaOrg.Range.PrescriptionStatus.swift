extension SchemaOrg.Range {

    public enum PrescriptionStatus: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case drugPrescriptionStatus(SchemaOrg.DrugPrescriptionStatus)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.PrescriptionStatus {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .drugPrescriptionStatus(let value):
            SchemaOrg.DrugPrescriptionStatus.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DrugPrescriptionStatus.deserialize(value) {
            return .drugPrescriptionStatus(value)
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
