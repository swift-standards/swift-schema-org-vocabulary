extension SchemaOrg {

    public enum DrugCostCategory: SchemaOrg.Value, Swift.Hashable {

        case reimbursementCap

        case retail

        case wholesale

        case instance(Instance)
    }
}

extension SchemaOrg.DrugCostCategory {

    public var term: Swift.String? {
        switch self {
        case .reimbursementCap:
            "ReimbursementCap"

        case .retail:
            "Retail"

        case .wholesale:
            "Wholesale"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ReimbursementCap":
            self = .reimbursementCap
            return

        case "Retail":
            self = .retail
            return

        case "Wholesale":
            self = .wholesale
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .reimbursementCap:
            SchemaOrg.serialize(term: "ReimbursementCap")

        case .retail:
            SchemaOrg.serialize(term: "Retail")

        case .wholesale:
            SchemaOrg.serialize(term: "Wholesale")

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
