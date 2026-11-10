extension SchemaOrg {

    public enum DrugPrescriptionStatus: SchemaOrg.Value, Swift.Hashable {

        case otc

        case prescriptionOnly

        case instance(Instance)
    }
}

extension SchemaOrg.DrugPrescriptionStatus {

    public var term: Swift.String? {
        switch self {
        case .otc:
            "OTC"

        case .prescriptionOnly:
            "PrescriptionOnly"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "OTC":
            self = .otc
            return

        case "PrescriptionOnly":
            self = .prescriptionOnly
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .otc:
            SchemaOrg.serialize(term: "OTC")

        case .prescriptionOnly:
            SchemaOrg.serialize(term: "PrescriptionOnly")

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
