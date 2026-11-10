extension SchemaOrg {

    public enum AdultOrientedEnumeration: SchemaOrg.Value, Swift.Hashable {

        case alcoholConsideration

        case dangerousGoodConsideration

        case healthcareConsideration

        case narcoticConsideration

        case reducedRelevanceForChildrenConsideration

        case sexualContentConsideration

        case tobaccoNicotineConsideration

        case unclassifiedAdultConsideration

        case violenceConsideration

        case weaponConsideration

        case instance(Instance)
    }
}

extension SchemaOrg.AdultOrientedEnumeration {

    public var term: Swift.String? {
        switch self {
        case .alcoholConsideration:
            "AlcoholConsideration"

        case .dangerousGoodConsideration:
            "DangerousGoodConsideration"

        case .healthcareConsideration:
            "HealthcareConsideration"

        case .narcoticConsideration:
            "NarcoticConsideration"

        case .reducedRelevanceForChildrenConsideration:
            "ReducedRelevanceForChildrenConsideration"

        case .sexualContentConsideration:
            "SexualContentConsideration"

        case .tobaccoNicotineConsideration:
            "TobaccoNicotineConsideration"

        case .unclassifiedAdultConsideration:
            "UnclassifiedAdultConsideration"

        case .violenceConsideration:
            "ViolenceConsideration"

        case .weaponConsideration:
            "WeaponConsideration"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AlcoholConsideration":
            self = .alcoholConsideration
            return

        case "DangerousGoodConsideration":
            self = .dangerousGoodConsideration
            return

        case "HealthcareConsideration":
            self = .healthcareConsideration
            return

        case "NarcoticConsideration":
            self = .narcoticConsideration
            return

        case "ReducedRelevanceForChildrenConsideration":
            self = .reducedRelevanceForChildrenConsideration
            return

        case "SexualContentConsideration":
            self = .sexualContentConsideration
            return

        case "TobaccoNicotineConsideration":
            self = .tobaccoNicotineConsideration
            return

        case "UnclassifiedAdultConsideration":
            self = .unclassifiedAdultConsideration
            return

        case "ViolenceConsideration":
            self = .violenceConsideration
            return

        case "WeaponConsideration":
            self = .weaponConsideration
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .alcoholConsideration:
            SchemaOrg.serialize(term: "AlcoholConsideration")

        case .dangerousGoodConsideration:
            SchemaOrg.serialize(term: "DangerousGoodConsideration")

        case .healthcareConsideration:
            SchemaOrg.serialize(term: "HealthcareConsideration")

        case .narcoticConsideration:
            SchemaOrg.serialize(term: "NarcoticConsideration")

        case .reducedRelevanceForChildrenConsideration:
            SchemaOrg.serialize(term: "ReducedRelevanceForChildrenConsideration")

        case .sexualContentConsideration:
            SchemaOrg.serialize(term: "SexualContentConsideration")

        case .tobaccoNicotineConsideration:
            SchemaOrg.serialize(term: "TobaccoNicotineConsideration")

        case .unclassifiedAdultConsideration:
            SchemaOrg.serialize(term: "UnclassifiedAdultConsideration")

        case .violenceConsideration:
            SchemaOrg.serialize(term: "ViolenceConsideration")

        case .weaponConsideration:
            SchemaOrg.serialize(term: "WeaponConsideration")

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
