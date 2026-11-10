extension SchemaOrg {

    public enum PriceComponentTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case activationFee

        case cleaningFee

        case distanceFee

        case downpayment

        case installment

        case subscription

        case instance(Instance)
    }
}

extension SchemaOrg.PriceComponentTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .activationFee:
            "ActivationFee"

        case .cleaningFee:
            "CleaningFee"

        case .distanceFee:
            "DistanceFee"

        case .downpayment:
            "Downpayment"

        case .installment:
            "Installment"

        case .subscription:
            "Subscription"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ActivationFee":
            self = .activationFee
            return

        case "CleaningFee":
            self = .cleaningFee
            return

        case "DistanceFee":
            self = .distanceFee
            return

        case "Downpayment":
            self = .downpayment
            return

        case "Installment":
            self = .installment
            return

        case "Subscription":
            self = .subscription
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .activationFee:
            SchemaOrg.serialize(term: "ActivationFee")

        case .cleaningFee:
            SchemaOrg.serialize(term: "CleaningFee")

        case .distanceFee:
            SchemaOrg.serialize(term: "DistanceFee")

        case .downpayment:
            SchemaOrg.serialize(term: "Downpayment")

        case .installment:
            SchemaOrg.serialize(term: "Installment")

        case .subscription:
            SchemaOrg.serialize(term: "Subscription")

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
