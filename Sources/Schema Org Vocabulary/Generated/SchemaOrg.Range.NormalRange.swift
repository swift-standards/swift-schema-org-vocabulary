extension SchemaOrg.Range {

    public enum NormalRange: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case medicalEnumeration(SchemaOrg.MedicalEnumeration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.NormalRange {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
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
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
