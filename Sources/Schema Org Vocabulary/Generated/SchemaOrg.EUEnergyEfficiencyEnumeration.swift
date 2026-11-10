extension SchemaOrg {

    public enum EUEnergyEfficiencyEnumeration: SchemaOrg.Value, Swift.Hashable {

        case euEnergyEfficiencyCategoryA

        case euEnergyEfficiencyCategoryA1Plus

        case euEnergyEfficiencyCategoryA2Plus

        case euEnergyEfficiencyCategoryA3Plus

        case euEnergyEfficiencyCategoryB

        case euEnergyEfficiencyCategoryC

        case euEnergyEfficiencyCategoryD

        case euEnergyEfficiencyCategoryE

        case euEnergyEfficiencyCategoryF

        case euEnergyEfficiencyCategoryG

        case instance(Instance)
    }
}

extension SchemaOrg.EUEnergyEfficiencyEnumeration {

    public var term: Swift.String? {
        switch self {
        case .euEnergyEfficiencyCategoryA:
            "EUEnergyEfficiencyCategoryA"

        case .euEnergyEfficiencyCategoryA1Plus:
            "EUEnergyEfficiencyCategoryA1Plus"

        case .euEnergyEfficiencyCategoryA2Plus:
            "EUEnergyEfficiencyCategoryA2Plus"

        case .euEnergyEfficiencyCategoryA3Plus:
            "EUEnergyEfficiencyCategoryA3Plus"

        case .euEnergyEfficiencyCategoryB:
            "EUEnergyEfficiencyCategoryB"

        case .euEnergyEfficiencyCategoryC:
            "EUEnergyEfficiencyCategoryC"

        case .euEnergyEfficiencyCategoryD:
            "EUEnergyEfficiencyCategoryD"

        case .euEnergyEfficiencyCategoryE:
            "EUEnergyEfficiencyCategoryE"

        case .euEnergyEfficiencyCategoryF:
            "EUEnergyEfficiencyCategoryF"

        case .euEnergyEfficiencyCategoryG:
            "EUEnergyEfficiencyCategoryG"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "EUEnergyEfficiencyCategoryA":
            self = .euEnergyEfficiencyCategoryA
            return

        case "EUEnergyEfficiencyCategoryA1Plus":
            self = .euEnergyEfficiencyCategoryA1Plus
            return

        case "EUEnergyEfficiencyCategoryA2Plus":
            self = .euEnergyEfficiencyCategoryA2Plus
            return

        case "EUEnergyEfficiencyCategoryA3Plus":
            self = .euEnergyEfficiencyCategoryA3Plus
            return

        case "EUEnergyEfficiencyCategoryB":
            self = .euEnergyEfficiencyCategoryB
            return

        case "EUEnergyEfficiencyCategoryC":
            self = .euEnergyEfficiencyCategoryC
            return

        case "EUEnergyEfficiencyCategoryD":
            self = .euEnergyEfficiencyCategoryD
            return

        case "EUEnergyEfficiencyCategoryE":
            self = .euEnergyEfficiencyCategoryE
            return

        case "EUEnergyEfficiencyCategoryF":
            self = .euEnergyEfficiencyCategoryF
            return

        case "EUEnergyEfficiencyCategoryG":
            self = .euEnergyEfficiencyCategoryG
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .euEnergyEfficiencyCategoryA:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryA")

        case .euEnergyEfficiencyCategoryA1Plus:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryA1Plus")

        case .euEnergyEfficiencyCategoryA2Plus:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryA2Plus")

        case .euEnergyEfficiencyCategoryA3Plus:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryA3Plus")

        case .euEnergyEfficiencyCategoryB:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryB")

        case .euEnergyEfficiencyCategoryC:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryC")

        case .euEnergyEfficiencyCategoryD:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryD")

        case .euEnergyEfficiencyCategoryE:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryE")

        case .euEnergyEfficiencyCategoryF:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryF")

        case .euEnergyEfficiencyCategoryG:
            SchemaOrg.serialize(term: "EUEnergyEfficiencyCategoryG")

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
