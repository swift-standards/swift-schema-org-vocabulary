extension SchemaOrg.Range {

    public enum Status: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case eventStatusType(SchemaOrg.EventStatusType)

        case medicalStudyStatus(SchemaOrg.MedicalStudyStatus)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Status {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .eventStatusType(let value):
            SchemaOrg.EventStatusType.serialize(value)

        case .medicalStudyStatus(let value):
            SchemaOrg.MedicalStudyStatus.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.EventStatusType.deserialize(value) {
            return .eventStatusType(value)
        }
        if let value = SchemaOrg.MedicalStudyStatus.deserialize(value) {
            return .medicalStudyStatus(value)
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
