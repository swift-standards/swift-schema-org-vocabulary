extension SchemaOrg {

    public enum WearableSizeSystemEnumeration: SchemaOrg.Value, Swift.Hashable {

        case wearableSizeSystemAU

        case wearableSizeSystemBR

        case wearableSizeSystemCN

        case wearableSizeSystemContinental

        case wearableSizeSystemDE

        case wearableSizeSystemEN13402

        case wearableSizeSystemEurope

        case wearableSizeSystemFR

        case wearableSizeSystemGS1

        case wearableSizeSystemIT

        case wearableSizeSystemJP

        case wearableSizeSystemMX

        case wearableSizeSystemUK

        case wearableSizeSystemUS

        case instance(Instance)
    }
}

extension SchemaOrg.WearableSizeSystemEnumeration {

    public var term: Swift.String? {
        switch self {
        case .wearableSizeSystemAU:
            "WearableSizeSystemAU"

        case .wearableSizeSystemBR:
            "WearableSizeSystemBR"

        case .wearableSizeSystemCN:
            "WearableSizeSystemCN"

        case .wearableSizeSystemContinental:
            "WearableSizeSystemContinental"

        case .wearableSizeSystemDE:
            "WearableSizeSystemDE"

        case .wearableSizeSystemEN13402:
            "WearableSizeSystemEN13402"

        case .wearableSizeSystemEurope:
            "WearableSizeSystemEurope"

        case .wearableSizeSystemFR:
            "WearableSizeSystemFR"

        case .wearableSizeSystemGS1:
            "WearableSizeSystemGS1"

        case .wearableSizeSystemIT:
            "WearableSizeSystemIT"

        case .wearableSizeSystemJP:
            "WearableSizeSystemJP"

        case .wearableSizeSystemMX:
            "WearableSizeSystemMX"

        case .wearableSizeSystemUK:
            "WearableSizeSystemUK"

        case .wearableSizeSystemUS:
            "WearableSizeSystemUS"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "WearableSizeSystemAU":
            self = .wearableSizeSystemAU
            return

        case "WearableSizeSystemBR":
            self = .wearableSizeSystemBR
            return

        case "WearableSizeSystemCN":
            self = .wearableSizeSystemCN
            return

        case "WearableSizeSystemContinental":
            self = .wearableSizeSystemContinental
            return

        case "WearableSizeSystemDE":
            self = .wearableSizeSystemDE
            return

        case "WearableSizeSystemEN13402":
            self = .wearableSizeSystemEN13402
            return

        case "WearableSizeSystemEurope":
            self = .wearableSizeSystemEurope
            return

        case "WearableSizeSystemFR":
            self = .wearableSizeSystemFR
            return

        case "WearableSizeSystemGS1":
            self = .wearableSizeSystemGS1
            return

        case "WearableSizeSystemIT":
            self = .wearableSizeSystemIT
            return

        case "WearableSizeSystemJP":
            self = .wearableSizeSystemJP
            return

        case "WearableSizeSystemMX":
            self = .wearableSizeSystemMX
            return

        case "WearableSizeSystemUK":
            self = .wearableSizeSystemUK
            return

        case "WearableSizeSystemUS":
            self = .wearableSizeSystemUS
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .wearableSizeSystemAU:
            SchemaOrg.serialize(term: "WearableSizeSystemAU")

        case .wearableSizeSystemBR:
            SchemaOrg.serialize(term: "WearableSizeSystemBR")

        case .wearableSizeSystemCN:
            SchemaOrg.serialize(term: "WearableSizeSystemCN")

        case .wearableSizeSystemContinental:
            SchemaOrg.serialize(term: "WearableSizeSystemContinental")

        case .wearableSizeSystemDE:
            SchemaOrg.serialize(term: "WearableSizeSystemDE")

        case .wearableSizeSystemEN13402:
            SchemaOrg.serialize(term: "WearableSizeSystemEN13402")

        case .wearableSizeSystemEurope:
            SchemaOrg.serialize(term: "WearableSizeSystemEurope")

        case .wearableSizeSystemFR:
            SchemaOrg.serialize(term: "WearableSizeSystemFR")

        case .wearableSizeSystemGS1:
            SchemaOrg.serialize(term: "WearableSizeSystemGS1")

        case .wearableSizeSystemIT:
            SchemaOrg.serialize(term: "WearableSizeSystemIT")

        case .wearableSizeSystemJP:
            SchemaOrg.serialize(term: "WearableSizeSystemJP")

        case .wearableSizeSystemMX:
            SchemaOrg.serialize(term: "WearableSizeSystemMX")

        case .wearableSizeSystemUK:
            SchemaOrg.serialize(term: "WearableSizeSystemUK")

        case .wearableSizeSystemUS:
            SchemaOrg.serialize(term: "WearableSizeSystemUS")

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
