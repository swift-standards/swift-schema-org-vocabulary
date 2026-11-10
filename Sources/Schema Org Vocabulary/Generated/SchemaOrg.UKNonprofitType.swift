extension SchemaOrg {

    public enum UKNonprofitType: SchemaOrg.Value, Swift.Hashable {

        case charitableIncorporatedOrganization

        case limitedByGuaranteeCharity

        case ukTrust

        case unincorporatedAssociationCharity

        case instance(Instance)
    }
}

extension SchemaOrg.UKNonprofitType {

    public var term: Swift.String? {
        switch self {
        case .charitableIncorporatedOrganization:
            "CharitableIncorporatedOrganization"

        case .limitedByGuaranteeCharity:
            "LimitedByGuaranteeCharity"

        case .ukTrust:
            "UKTrust"

        case .unincorporatedAssociationCharity:
            "UnincorporatedAssociationCharity"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CharitableIncorporatedOrganization":
            self = .charitableIncorporatedOrganization
            return

        case "LimitedByGuaranteeCharity":
            self = .limitedByGuaranteeCharity
            return

        case "UKTrust":
            self = .ukTrust
            return

        case "UnincorporatedAssociationCharity":
            self = .unincorporatedAssociationCharity
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .charitableIncorporatedOrganization:
            SchemaOrg.serialize(term: "CharitableIncorporatedOrganization")

        case .limitedByGuaranteeCharity:
            SchemaOrg.serialize(term: "LimitedByGuaranteeCharity")

        case .ukTrust:
            SchemaOrg.serialize(term: "UKTrust")

        case .unincorporatedAssociationCharity:
            SchemaOrg.serialize(term: "UnincorporatedAssociationCharity")

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
