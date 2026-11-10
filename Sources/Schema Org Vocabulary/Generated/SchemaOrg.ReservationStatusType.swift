extension SchemaOrg {

    public enum ReservationStatusType: SchemaOrg.Value, Swift.Hashable {

        case reservationCancelled

        case reservationConfirmed

        case reservationHold

        case reservationPending

        case instance(Instance)
    }
}

extension SchemaOrg.ReservationStatusType {

    public var term: Swift.String? {
        switch self {
        case .reservationCancelled:
            "ReservationCancelled"

        case .reservationConfirmed:
            "ReservationConfirmed"

        case .reservationHold:
            "ReservationHold"

        case .reservationPending:
            "ReservationPending"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ReservationCancelled":
            self = .reservationCancelled
            return

        case "ReservationConfirmed":
            self = .reservationConfirmed
            return

        case "ReservationHold":
            self = .reservationHold
            return

        case "ReservationPending":
            self = .reservationPending
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .reservationCancelled:
            SchemaOrg.serialize(term: "ReservationCancelled")

        case .reservationConfirmed:
            SchemaOrg.serialize(term: "ReservationConfirmed")

        case .reservationHold:
            SchemaOrg.serialize(term: "ReservationHold")

        case .reservationPending:
            SchemaOrg.serialize(term: "ReservationPending")

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
