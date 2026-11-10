extension SchemaOrg {

    public enum ITNonprofitType: SchemaOrg.Value, Swift.Hashable {

        case itAmateurSportsClubCharity

        case itAssociativeNetworkCharity

        case itCooperativeCharity

        case itMutualAidCharity

        case itOtherThirdSectorEntityCharity

        case itPhilanthropicEntityCharity

        case itSocialCompanyCharity

        case itSocialCooperativeCharity

        case itSocialEnterpriseCharity

        case itSocialPromotionCharity

        case itSportCompanyCharity

        case itVolunteerAssociationCharity

        case instance(Instance)
    }
}

extension SchemaOrg.ITNonprofitType {

    public var term: Swift.String? {
        switch self {
        case .itAmateurSportsClubCharity:
            "ITAmateurSportsClubCharity"

        case .itAssociativeNetworkCharity:
            "ITAssociativeNetworkCharity"

        case .itCooperativeCharity:
            "ITCooperativeCharity"

        case .itMutualAidCharity:
            "ITMutualAidCharity"

        case .itOtherThirdSectorEntityCharity:
            "ITOtherThirdSectorEntityCharity"

        case .itPhilanthropicEntityCharity:
            "ITPhilanthropicEntityCharity"

        case .itSocialCompanyCharity:
            "ITSocialCompanyCharity"

        case .itSocialCooperativeCharity:
            "ITSocialCooperativeCharity"

        case .itSocialEnterpriseCharity:
            "ITSocialEnterpriseCharity"

        case .itSocialPromotionCharity:
            "ITSocialPromotionCharity"

        case .itSportCompanyCharity:
            "ITSportCompanyCharity"

        case .itVolunteerAssociationCharity:
            "ITVolunteerAssociationCharity"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ITAmateurSportsClubCharity":
            self = .itAmateurSportsClubCharity
            return

        case "ITAssociativeNetworkCharity":
            self = .itAssociativeNetworkCharity
            return

        case "ITCooperativeCharity":
            self = .itCooperativeCharity
            return

        case "ITMutualAidCharity":
            self = .itMutualAidCharity
            return

        case "ITOtherThirdSectorEntityCharity":
            self = .itOtherThirdSectorEntityCharity
            return

        case "ITPhilanthropicEntityCharity":
            self = .itPhilanthropicEntityCharity
            return

        case "ITSocialCompanyCharity":
            self = .itSocialCompanyCharity
            return

        case "ITSocialCooperativeCharity":
            self = .itSocialCooperativeCharity
            return

        case "ITSocialEnterpriseCharity":
            self = .itSocialEnterpriseCharity
            return

        case "ITSocialPromotionCharity":
            self = .itSocialPromotionCharity
            return

        case "ITSportCompanyCharity":
            self = .itSportCompanyCharity
            return

        case "ITVolunteerAssociationCharity":
            self = .itVolunteerAssociationCharity
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itAmateurSportsClubCharity:
            SchemaOrg.serialize(term: "ITAmateurSportsClubCharity")

        case .itAssociativeNetworkCharity:
            SchemaOrg.serialize(term: "ITAssociativeNetworkCharity")

        case .itCooperativeCharity:
            SchemaOrg.serialize(term: "ITCooperativeCharity")

        case .itMutualAidCharity:
            SchemaOrg.serialize(term: "ITMutualAidCharity")

        case .itOtherThirdSectorEntityCharity:
            SchemaOrg.serialize(term: "ITOtherThirdSectorEntityCharity")

        case .itPhilanthropicEntityCharity:
            SchemaOrg.serialize(term: "ITPhilanthropicEntityCharity")

        case .itSocialCompanyCharity:
            SchemaOrg.serialize(term: "ITSocialCompanyCharity")

        case .itSocialCooperativeCharity:
            SchemaOrg.serialize(term: "ITSocialCooperativeCharity")

        case .itSocialEnterpriseCharity:
            SchemaOrg.serialize(term: "ITSocialEnterpriseCharity")

        case .itSocialPromotionCharity:
            SchemaOrg.serialize(term: "ITSocialPromotionCharity")

        case .itSportCompanyCharity:
            SchemaOrg.serialize(term: "ITSportCompanyCharity")

        case .itVolunteerAssociationCharity:
            SchemaOrg.serialize(term: "ITVolunteerAssociationCharity")

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
