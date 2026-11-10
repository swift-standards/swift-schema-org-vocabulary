extension SchemaOrg {

    public enum PaymentStatusType: SchemaOrg.Value, Swift.Hashable {

        case paymentAutomaticallyApplied

        case paymentComplete

        case paymentDeclined

        case paymentDue

        case paymentPastDue

        case instance(Instance)
    }
}

extension SchemaOrg.PaymentStatusType {

    public var term: Swift.String? {
        switch self {
        case .paymentAutomaticallyApplied:
            "PaymentAutomaticallyApplied"

        case .paymentComplete:
            "PaymentComplete"

        case .paymentDeclined:
            "PaymentDeclined"

        case .paymentDue:
            "PaymentDue"

        case .paymentPastDue:
            "PaymentPastDue"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "PaymentAutomaticallyApplied":
            self = .paymentAutomaticallyApplied
            return

        case "PaymentComplete":
            self = .paymentComplete
            return

        case "PaymentDeclined":
            self = .paymentDeclined
            return

        case "PaymentDue":
            self = .paymentDue
            return

        case "PaymentPastDue":
            self = .paymentPastDue
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .paymentAutomaticallyApplied:
            SchemaOrg.serialize(term: "PaymentAutomaticallyApplied")

        case .paymentComplete:
            SchemaOrg.serialize(term: "PaymentComplete")

        case .paymentDeclined:
            SchemaOrg.serialize(term: "PaymentDeclined")

        case .paymentDue:
            SchemaOrg.serialize(term: "PaymentDue")

        case .paymentPastDue:
            SchemaOrg.serialize(term: "PaymentPastDue")

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
