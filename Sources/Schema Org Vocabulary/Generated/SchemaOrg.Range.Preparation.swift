extension SchemaOrg.Range {

    public enum Preparation: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case medicalEntity(SchemaOrg.MedicalEntity)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Preparation {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .medicalEntity(let value):
            SchemaOrg.MedicalEntity.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MedicalEntity.deserialize(value) {
            return .medicalEntity(value)
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
