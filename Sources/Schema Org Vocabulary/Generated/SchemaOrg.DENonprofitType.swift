extension SchemaOrg {

    public enum DENonprofitType: SchemaOrg.Value, Swift.Hashable {

        case deCooperativeCharity

        case deFoundationCharity

        case deJointStockCompanyCharity

        case deLimitedLiabilityCharity

        case deNotRegisteredAssociationCharity

        case dePublicCharity

        case deRegisteredAssociationCharity

        case instance(Instance)
    }
}

extension SchemaOrg.DENonprofitType {

    public var term: Swift.String? {
        switch self {
        case .deCooperativeCharity:
            "DECooperativeCharity"

        case .deFoundationCharity:
            "DEFoundationCharity"

        case .deJointStockCompanyCharity:
            "DEJointStockCompanyCharity"

        case .deLimitedLiabilityCharity:
            "DELimitedLiabilityCharity"

        case .deNotRegisteredAssociationCharity:
            "DENotRegisteredAssociationCharity"

        case .dePublicCharity:
            "DEPublicCharity"

        case .deRegisteredAssociationCharity:
            "DERegisteredAssociationCharity"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DECooperativeCharity":
            self = .deCooperativeCharity
            return

        case "DEFoundationCharity":
            self = .deFoundationCharity
            return

        case "DEJointStockCompanyCharity":
            self = .deJointStockCompanyCharity
            return

        case "DELimitedLiabilityCharity":
            self = .deLimitedLiabilityCharity
            return

        case "DENotRegisteredAssociationCharity":
            self = .deNotRegisteredAssociationCharity
            return

        case "DEPublicCharity":
            self = .dePublicCharity
            return

        case "DERegisteredAssociationCharity":
            self = .deRegisteredAssociationCharity
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .deCooperativeCharity:
            SchemaOrg.serialize(term: "DECooperativeCharity")

        case .deFoundationCharity:
            SchemaOrg.serialize(term: "DEFoundationCharity")

        case .deJointStockCompanyCharity:
            SchemaOrg.serialize(term: "DEJointStockCompanyCharity")

        case .deLimitedLiabilityCharity:
            SchemaOrg.serialize(term: "DELimitedLiabilityCharity")

        case .deNotRegisteredAssociationCharity:
            SchemaOrg.serialize(term: "DENotRegisteredAssociationCharity")

        case .dePublicCharity:
            SchemaOrg.serialize(term: "DEPublicCharity")

        case .deRegisteredAssociationCharity:
            SchemaOrg.serialize(term: "DERegisteredAssociationCharity")

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
