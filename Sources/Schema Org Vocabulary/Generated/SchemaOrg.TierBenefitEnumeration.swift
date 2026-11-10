extension SchemaOrg {

    public enum TierBenefitEnumeration: SchemaOrg.Value, Swift.Hashable {

        case tierBenefitLoyaltyPoints

        case tierBenefitLoyaltyPrice

        case tierBenefitLoyaltyReturns

        case tierBenefitLoyaltyShipping

        case instance(Instance)
    }
}

extension SchemaOrg.TierBenefitEnumeration {

    public var term: Swift.String? {
        switch self {
        case .tierBenefitLoyaltyPoints:
            "TierBenefitLoyaltyPoints"

        case .tierBenefitLoyaltyPrice:
            "TierBenefitLoyaltyPrice"

        case .tierBenefitLoyaltyReturns:
            "TierBenefitLoyaltyReturns"

        case .tierBenefitLoyaltyShipping:
            "TierBenefitLoyaltyShipping"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "TierBenefitLoyaltyPoints":
            self = .tierBenefitLoyaltyPoints
            return

        case "TierBenefitLoyaltyPrice":
            self = .tierBenefitLoyaltyPrice
            return

        case "TierBenefitLoyaltyReturns":
            self = .tierBenefitLoyaltyReturns
            return

        case "TierBenefitLoyaltyShipping":
            self = .tierBenefitLoyaltyShipping
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .tierBenefitLoyaltyPoints:
            SchemaOrg.serialize(term: "TierBenefitLoyaltyPoints")

        case .tierBenefitLoyaltyPrice:
            SchemaOrg.serialize(term: "TierBenefitLoyaltyPrice")

        case .tierBenefitLoyaltyReturns:
            SchemaOrg.serialize(term: "TierBenefitLoyaltyReturns")

        case .tierBenefitLoyaltyShipping:
            SchemaOrg.serialize(term: "TierBenefitLoyaltyShipping")

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
