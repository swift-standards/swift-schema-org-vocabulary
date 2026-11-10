extension SchemaOrg {

    public enum WearableSizeGroupEnumeration: SchemaOrg.Value, Swift.Hashable {

        case wearableSizeGroupBig

        case wearableSizeGroupBoys

        case wearableSizeGroupExtraShort

        case wearableSizeGroupExtraTall

        case wearableSizeGroupGirls

        case wearableSizeGroupHusky

        case wearableSizeGroupInfants

        case wearableSizeGroupJuniors

        case wearableSizeGroupMaternity

        case wearableSizeGroupMens

        case wearableSizeGroupMisses

        case wearableSizeGroupPetite

        case wearableSizeGroupPlus

        case wearableSizeGroupRegular

        case wearableSizeGroupShort

        case wearableSizeGroupTall

        case wearableSizeGroupWomens

        case instance(Instance)
    }
}

extension SchemaOrg.WearableSizeGroupEnumeration {

    public var term: Swift.String? {
        switch self {
        case .wearableSizeGroupBig:
            "WearableSizeGroupBig"

        case .wearableSizeGroupBoys:
            "WearableSizeGroupBoys"

        case .wearableSizeGroupExtraShort:
            "WearableSizeGroupExtraShort"

        case .wearableSizeGroupExtraTall:
            "WearableSizeGroupExtraTall"

        case .wearableSizeGroupGirls:
            "WearableSizeGroupGirls"

        case .wearableSizeGroupHusky:
            "WearableSizeGroupHusky"

        case .wearableSizeGroupInfants:
            "WearableSizeGroupInfants"

        case .wearableSizeGroupJuniors:
            "WearableSizeGroupJuniors"

        case .wearableSizeGroupMaternity:
            "WearableSizeGroupMaternity"

        case .wearableSizeGroupMens:
            "WearableSizeGroupMens"

        case .wearableSizeGroupMisses:
            "WearableSizeGroupMisses"

        case .wearableSizeGroupPetite:
            "WearableSizeGroupPetite"

        case .wearableSizeGroupPlus:
            "WearableSizeGroupPlus"

        case .wearableSizeGroupRegular:
            "WearableSizeGroupRegular"

        case .wearableSizeGroupShort:
            "WearableSizeGroupShort"

        case .wearableSizeGroupTall:
            "WearableSizeGroupTall"

        case .wearableSizeGroupWomens:
            "WearableSizeGroupWomens"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "WearableSizeGroupBig":
            self = .wearableSizeGroupBig
            return

        case "WearableSizeGroupBoys":
            self = .wearableSizeGroupBoys
            return

        case "WearableSizeGroupExtraShort":
            self = .wearableSizeGroupExtraShort
            return

        case "WearableSizeGroupExtraTall":
            self = .wearableSizeGroupExtraTall
            return

        case "WearableSizeGroupGirls":
            self = .wearableSizeGroupGirls
            return

        case "WearableSizeGroupHusky":
            self = .wearableSizeGroupHusky
            return

        case "WearableSizeGroupInfants":
            self = .wearableSizeGroupInfants
            return

        case "WearableSizeGroupJuniors":
            self = .wearableSizeGroupJuniors
            return

        case "WearableSizeGroupMaternity":
            self = .wearableSizeGroupMaternity
            return

        case "WearableSizeGroupMens":
            self = .wearableSizeGroupMens
            return

        case "WearableSizeGroupMisses":
            self = .wearableSizeGroupMisses
            return

        case "WearableSizeGroupPetite":
            self = .wearableSizeGroupPetite
            return

        case "WearableSizeGroupPlus":
            self = .wearableSizeGroupPlus
            return

        case "WearableSizeGroupRegular":
            self = .wearableSizeGroupRegular
            return

        case "WearableSizeGroupShort":
            self = .wearableSizeGroupShort
            return

        case "WearableSizeGroupTall":
            self = .wearableSizeGroupTall
            return

        case "WearableSizeGroupWomens":
            self = .wearableSizeGroupWomens
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .wearableSizeGroupBig:
            SchemaOrg.serialize(term: "WearableSizeGroupBig")

        case .wearableSizeGroupBoys:
            SchemaOrg.serialize(term: "WearableSizeGroupBoys")

        case .wearableSizeGroupExtraShort:
            SchemaOrg.serialize(term: "WearableSizeGroupExtraShort")

        case .wearableSizeGroupExtraTall:
            SchemaOrg.serialize(term: "WearableSizeGroupExtraTall")

        case .wearableSizeGroupGirls:
            SchemaOrg.serialize(term: "WearableSizeGroupGirls")

        case .wearableSizeGroupHusky:
            SchemaOrg.serialize(term: "WearableSizeGroupHusky")

        case .wearableSizeGroupInfants:
            SchemaOrg.serialize(term: "WearableSizeGroupInfants")

        case .wearableSizeGroupJuniors:
            SchemaOrg.serialize(term: "WearableSizeGroupJuniors")

        case .wearableSizeGroupMaternity:
            SchemaOrg.serialize(term: "WearableSizeGroupMaternity")

        case .wearableSizeGroupMens:
            SchemaOrg.serialize(term: "WearableSizeGroupMens")

        case .wearableSizeGroupMisses:
            SchemaOrg.serialize(term: "WearableSizeGroupMisses")

        case .wearableSizeGroupPetite:
            SchemaOrg.serialize(term: "WearableSizeGroupPetite")

        case .wearableSizeGroupPlus:
            SchemaOrg.serialize(term: "WearableSizeGroupPlus")

        case .wearableSizeGroupRegular:
            SchemaOrg.serialize(term: "WearableSizeGroupRegular")

        case .wearableSizeGroupShort:
            SchemaOrg.serialize(term: "WearableSizeGroupShort")

        case .wearableSizeGroupTall:
            SchemaOrg.serialize(term: "WearableSizeGroupTall")

        case .wearableSizeGroupWomens:
            SchemaOrg.serialize(term: "WearableSizeGroupWomens")

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
