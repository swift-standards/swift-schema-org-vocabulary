extension SchemaOrg {

    public enum StatusEnumeration: SchemaOrg.Value, Swift.Hashable {

        case actionStatusType(SchemaOrg.ActionStatusType)

        case eventStatusType(SchemaOrg.EventStatusType)

        case gameServerStatus(SchemaOrg.GameServerStatus)

        case legalForceStatus(SchemaOrg.LegalForceStatus)

        case orderStatus(SchemaOrg.OrderStatus)

        case paymentStatusType(SchemaOrg.PaymentStatusType)

        case reservationStatusType(SchemaOrg.ReservationStatusType)

        case instance(Instance)
    }
}

extension SchemaOrg.StatusEnumeration {

    public var term: Swift.String? {
        switch self {
        case .actionStatusType(let value):
            value.term

        case .eventStatusType(let value):
            value.term

        case .gameServerStatus(let value):
            value.term

        case .legalForceStatus(let value):
            value.term

        case .orderStatus(let value):
            value.term

        case .paymentStatusType(let value):
            value.term

        case .reservationStatusType(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.ActionStatusType(term: term) {
            self = .actionStatusType(value)
            return
        }
        if let value = SchemaOrg.EventStatusType(term: term) {
            self = .eventStatusType(value)
            return
        }
        if let value = SchemaOrg.GameServerStatus(term: term) {
            self = .gameServerStatus(value)
            return
        }
        if let value = SchemaOrg.LegalForceStatus(term: term) {
            self = .legalForceStatus(value)
            return
        }
        if let value = SchemaOrg.OrderStatus(term: term) {
            self = .orderStatus(value)
            return
        }
        if let value = SchemaOrg.PaymentStatusType(term: term) {
            self = .paymentStatusType(value)
            return
        }
        if let value = SchemaOrg.ReservationStatusType(term: term) {
            self = .reservationStatusType(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .actionStatusType(let value):
            SchemaOrg.ActionStatusType.serialize(value)

        case .eventStatusType(let value):
            SchemaOrg.EventStatusType.serialize(value)

        case .gameServerStatus(let value):
            SchemaOrg.GameServerStatus.serialize(value)

        case .legalForceStatus(let value):
            SchemaOrg.LegalForceStatus.serialize(value)

        case .orderStatus(let value):
            SchemaOrg.OrderStatus.serialize(value)

        case .paymentStatusType(let value):
            SchemaOrg.PaymentStatusType.serialize(value)

        case .reservationStatusType(let value):
            SchemaOrg.ReservationStatusType.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.ActionStatusType.deserialize(value) {
                return .actionStatusType(value)
            }
            if let value = SchemaOrg.EventStatusType.deserialize(value) {
                return .eventStatusType(value)
            }
            if let value = SchemaOrg.GameServerStatus.deserialize(value) {
                return .gameServerStatus(value)
            }
            if let value = SchemaOrg.LegalForceStatus.deserialize(value) {
                return .legalForceStatus(value)
            }
            if let value = SchemaOrg.OrderStatus.deserialize(value) {
                return .orderStatus(value)
            }
            if let value = SchemaOrg.PaymentStatusType.deserialize(value) {
                return .paymentStatusType(value)
            }
            if let value = SchemaOrg.ReservationStatusType.deserialize(value) {
                return .reservationStatusType(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
