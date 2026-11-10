extension SchemaOrg {

    public enum MedicalEvidenceLevel: SchemaOrg.Value, Swift.Hashable {

        case evidenceLevelA

        case evidenceLevelB

        case evidenceLevelC

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalEvidenceLevel {

    public var term: Swift.String? {
        switch self {
        case .evidenceLevelA:
            "EvidenceLevelA"

        case .evidenceLevelB:
            "EvidenceLevelB"

        case .evidenceLevelC:
            "EvidenceLevelC"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "EvidenceLevelA":
            self = .evidenceLevelA
            return

        case "EvidenceLevelB":
            self = .evidenceLevelB
            return

        case "EvidenceLevelC":
            self = .evidenceLevelC
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .evidenceLevelA:
            SchemaOrg.serialize(term: "EvidenceLevelA")

        case .evidenceLevelB:
            SchemaOrg.serialize(term: "EvidenceLevelB")

        case .evidenceLevelC:
            SchemaOrg.serialize(term: "EvidenceLevelC")

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
