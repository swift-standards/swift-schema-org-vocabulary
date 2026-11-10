extension SchemaOrg {

    public enum WearableMeasurementTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case wearableMeasurementBack

        case wearableMeasurementChestOrBust

        case wearableMeasurementCollar

        case wearableMeasurementCup

        case wearableMeasurementHeight

        case wearableMeasurementHips

        case wearableMeasurementInseam

        case wearableMeasurementLength

        case wearableMeasurementOutsideLeg

        case wearableMeasurementSleeve

        case wearableMeasurementWaist

        case wearableMeasurementWidth

        case instance(Instance)
    }
}

extension SchemaOrg.WearableMeasurementTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .wearableMeasurementBack:
            "WearableMeasurementBack"

        case .wearableMeasurementChestOrBust:
            "WearableMeasurementChestOrBust"

        case .wearableMeasurementCollar:
            "WearableMeasurementCollar"

        case .wearableMeasurementCup:
            "WearableMeasurementCup"

        case .wearableMeasurementHeight:
            "WearableMeasurementHeight"

        case .wearableMeasurementHips:
            "WearableMeasurementHips"

        case .wearableMeasurementInseam:
            "WearableMeasurementInseam"

        case .wearableMeasurementLength:
            "WearableMeasurementLength"

        case .wearableMeasurementOutsideLeg:
            "WearableMeasurementOutsideLeg"

        case .wearableMeasurementSleeve:
            "WearableMeasurementSleeve"

        case .wearableMeasurementWaist:
            "WearableMeasurementWaist"

        case .wearableMeasurementWidth:
            "WearableMeasurementWidth"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "WearableMeasurementBack":
            self = .wearableMeasurementBack
            return

        case "WearableMeasurementChestOrBust":
            self = .wearableMeasurementChestOrBust
            return

        case "WearableMeasurementCollar":
            self = .wearableMeasurementCollar
            return

        case "WearableMeasurementCup":
            self = .wearableMeasurementCup
            return

        case "WearableMeasurementHeight":
            self = .wearableMeasurementHeight
            return

        case "WearableMeasurementHips":
            self = .wearableMeasurementHips
            return

        case "WearableMeasurementInseam":
            self = .wearableMeasurementInseam
            return

        case "WearableMeasurementLength":
            self = .wearableMeasurementLength
            return

        case "WearableMeasurementOutsideLeg":
            self = .wearableMeasurementOutsideLeg
            return

        case "WearableMeasurementSleeve":
            self = .wearableMeasurementSleeve
            return

        case "WearableMeasurementWaist":
            self = .wearableMeasurementWaist
            return

        case "WearableMeasurementWidth":
            self = .wearableMeasurementWidth
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .wearableMeasurementBack:
            SchemaOrg.serialize(term: "WearableMeasurementBack")

        case .wearableMeasurementChestOrBust:
            SchemaOrg.serialize(term: "WearableMeasurementChestOrBust")

        case .wearableMeasurementCollar:
            SchemaOrg.serialize(term: "WearableMeasurementCollar")

        case .wearableMeasurementCup:
            SchemaOrg.serialize(term: "WearableMeasurementCup")

        case .wearableMeasurementHeight:
            SchemaOrg.serialize(term: "WearableMeasurementHeight")

        case .wearableMeasurementHips:
            SchemaOrg.serialize(term: "WearableMeasurementHips")

        case .wearableMeasurementInseam:
            SchemaOrg.serialize(term: "WearableMeasurementInseam")

        case .wearableMeasurementLength:
            SchemaOrg.serialize(term: "WearableMeasurementLength")

        case .wearableMeasurementOutsideLeg:
            SchemaOrg.serialize(term: "WearableMeasurementOutsideLeg")

        case .wearableMeasurementSleeve:
            SchemaOrg.serialize(term: "WearableMeasurementSleeve")

        case .wearableMeasurementWaist:
            SchemaOrg.serialize(term: "WearableMeasurementWaist")

        case .wearableMeasurementWidth:
            SchemaOrg.serialize(term: "WearableMeasurementWidth")

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
