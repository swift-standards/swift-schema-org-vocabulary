extension SchemaOrg.Range {

    public enum Contraindication: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case medicalContraindication(SchemaOrg.MedicalContraindication)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Contraindication {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .medicalContraindication(let value):
            SchemaOrg.MedicalContraindication.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MedicalContraindication.deserialize(value) {
            return .medicalContraindication(value)
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
