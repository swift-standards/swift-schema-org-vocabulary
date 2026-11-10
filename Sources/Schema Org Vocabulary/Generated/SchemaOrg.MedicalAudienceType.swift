extension SchemaOrg {

    public enum MedicalAudienceType: SchemaOrg.Value, Swift.Hashable {

        case clinician

        case medicalResearcher

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalAudienceType {

    public var term: Swift.String? {
        switch self {
        case .clinician:
            "Clinician"

        case .medicalResearcher:
            "MedicalResearcher"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Clinician":
            self = .clinician
            return

        case "MedicalResearcher":
            self = .medicalResearcher
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .clinician:
            SchemaOrg.serialize(term: "Clinician")

        case .medicalResearcher:
            SchemaOrg.serialize(term: "MedicalResearcher")

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
