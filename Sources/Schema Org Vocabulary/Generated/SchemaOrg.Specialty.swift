extension SchemaOrg {

    public enum Specialty: SchemaOrg.Value, Swift.Hashable {

        case medicalSpecialty(SchemaOrg.MedicalSpecialty)

        case instance(Instance)
    }
}

extension SchemaOrg.Specialty {

    public var term: Swift.String? {
        switch self {
        case .medicalSpecialty(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.MedicalSpecialty(term: term) {
            self = .medicalSpecialty(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .medicalSpecialty(let value):
            SchemaOrg.MedicalSpecialty.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.MedicalSpecialty.deserialize(value) {
                return .medicalSpecialty(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
