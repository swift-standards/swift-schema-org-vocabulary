extension SchemaOrg {

    public enum BodyMeasurementTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case bodyMeasurementArm

        case bodyMeasurementBust

        case bodyMeasurementChest

        case bodyMeasurementFoot

        case bodyMeasurementHand

        case bodyMeasurementHead

        case bodyMeasurementHeight

        case bodyMeasurementHips

        case bodyMeasurementInsideLeg

        case bodyMeasurementNeck

        case bodyMeasurementUnderbust

        case bodyMeasurementWaist

        case bodyMeasurementWeight

        case instance(Instance)
    }
}

extension SchemaOrg.BodyMeasurementTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .bodyMeasurementArm:
            "BodyMeasurementArm"

        case .bodyMeasurementBust:
            "BodyMeasurementBust"

        case .bodyMeasurementChest:
            "BodyMeasurementChest"

        case .bodyMeasurementFoot:
            "BodyMeasurementFoot"

        case .bodyMeasurementHand:
            "BodyMeasurementHand"

        case .bodyMeasurementHead:
            "BodyMeasurementHead"

        case .bodyMeasurementHeight:
            "BodyMeasurementHeight"

        case .bodyMeasurementHips:
            "BodyMeasurementHips"

        case .bodyMeasurementInsideLeg:
            "BodyMeasurementInsideLeg"

        case .bodyMeasurementNeck:
            "BodyMeasurementNeck"

        case .bodyMeasurementUnderbust:
            "BodyMeasurementUnderbust"

        case .bodyMeasurementWaist:
            "BodyMeasurementWaist"

        case .bodyMeasurementWeight:
            "BodyMeasurementWeight"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "BodyMeasurementArm":
            self = .bodyMeasurementArm
            return

        case "BodyMeasurementBust":
            self = .bodyMeasurementBust
            return

        case "BodyMeasurementChest":
            self = .bodyMeasurementChest
            return

        case "BodyMeasurementFoot":
            self = .bodyMeasurementFoot
            return

        case "BodyMeasurementHand":
            self = .bodyMeasurementHand
            return

        case "BodyMeasurementHead":
            self = .bodyMeasurementHead
            return

        case "BodyMeasurementHeight":
            self = .bodyMeasurementHeight
            return

        case "BodyMeasurementHips":
            self = .bodyMeasurementHips
            return

        case "BodyMeasurementInsideLeg":
            self = .bodyMeasurementInsideLeg
            return

        case "BodyMeasurementNeck":
            self = .bodyMeasurementNeck
            return

        case "BodyMeasurementUnderbust":
            self = .bodyMeasurementUnderbust
            return

        case "BodyMeasurementWaist":
            self = .bodyMeasurementWaist
            return

        case "BodyMeasurementWeight":
            self = .bodyMeasurementWeight
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bodyMeasurementArm:
            SchemaOrg.serialize(term: "BodyMeasurementArm")

        case .bodyMeasurementBust:
            SchemaOrg.serialize(term: "BodyMeasurementBust")

        case .bodyMeasurementChest:
            SchemaOrg.serialize(term: "BodyMeasurementChest")

        case .bodyMeasurementFoot:
            SchemaOrg.serialize(term: "BodyMeasurementFoot")

        case .bodyMeasurementHand:
            SchemaOrg.serialize(term: "BodyMeasurementHand")

        case .bodyMeasurementHead:
            SchemaOrg.serialize(term: "BodyMeasurementHead")

        case .bodyMeasurementHeight:
            SchemaOrg.serialize(term: "BodyMeasurementHeight")

        case .bodyMeasurementHips:
            SchemaOrg.serialize(term: "BodyMeasurementHips")

        case .bodyMeasurementInsideLeg:
            SchemaOrg.serialize(term: "BodyMeasurementInsideLeg")

        case .bodyMeasurementNeck:
            SchemaOrg.serialize(term: "BodyMeasurementNeck")

        case .bodyMeasurementUnderbust:
            SchemaOrg.serialize(term: "BodyMeasurementUnderbust")

        case .bodyMeasurementWaist:
            SchemaOrg.serialize(term: "BodyMeasurementWaist")

        case .bodyMeasurementWeight:
            SchemaOrg.serialize(term: "BodyMeasurementWeight")

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
