extension SchemaOrg {

    public enum RefundTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case exchangeRefund

        case fullRefund

        case storeCreditRefund

        case instance(Instance)
    }
}

extension SchemaOrg.RefundTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .exchangeRefund:
            "ExchangeRefund"

        case .fullRefund:
            "FullRefund"

        case .storeCreditRefund:
            "StoreCreditRefund"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ExchangeRefund":
            self = .exchangeRefund
            return

        case "FullRefund":
            self = .fullRefund
            return

        case "StoreCreditRefund":
            self = .storeCreditRefund
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .exchangeRefund:
            SchemaOrg.serialize(term: "ExchangeRefund")

        case .fullRefund:
            SchemaOrg.serialize(term: "FullRefund")

        case .storeCreditRefund:
            SchemaOrg.serialize(term: "StoreCreditRefund")

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
