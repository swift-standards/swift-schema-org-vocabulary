extension SchemaOrg {

    public enum OrderStatus: SchemaOrg.Value, Swift.Hashable {

        case orderCancelled

        case orderDelivered

        case orderInTransit

        case orderPaymentDue

        case orderPickupAvailable

        case orderProblem

        case orderProcessing

        case orderReturned

        case instance(Instance)
    }
}

extension SchemaOrg.OrderStatus {

    public var term: Swift.String? {
        switch self {
        case .orderCancelled:
            "OrderCancelled"

        case .orderDelivered:
            "OrderDelivered"

        case .orderInTransit:
            "OrderInTransit"

        case .orderPaymentDue:
            "OrderPaymentDue"

        case .orderPickupAvailable:
            "OrderPickupAvailable"

        case .orderProblem:
            "OrderProblem"

        case .orderProcessing:
            "OrderProcessing"

        case .orderReturned:
            "OrderReturned"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "OrderCancelled":
            self = .orderCancelled
            return

        case "OrderDelivered":
            self = .orderDelivered
            return

        case "OrderInTransit":
            self = .orderInTransit
            return

        case "OrderPaymentDue":
            self = .orderPaymentDue
            return

        case "OrderPickupAvailable":
            self = .orderPickupAvailable
            return

        case "OrderProblem":
            self = .orderProblem
            return

        case "OrderProcessing":
            self = .orderProcessing
            return

        case "OrderReturned":
            self = .orderReturned
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .orderCancelled:
            SchemaOrg.serialize(term: "OrderCancelled")

        case .orderDelivered:
            SchemaOrg.serialize(term: "OrderDelivered")

        case .orderInTransit:
            SchemaOrg.serialize(term: "OrderInTransit")

        case .orderPaymentDue:
            SchemaOrg.serialize(term: "OrderPaymentDue")

        case .orderPickupAvailable:
            SchemaOrg.serialize(term: "OrderPickupAvailable")

        case .orderProblem:
            SchemaOrg.serialize(term: "OrderProblem")

        case .orderProcessing:
            SchemaOrg.serialize(term: "OrderProcessing")

        case .orderReturned:
            SchemaOrg.serialize(term: "OrderReturned")

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
