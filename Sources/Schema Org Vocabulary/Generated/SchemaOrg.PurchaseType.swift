extension SchemaOrg {

    public enum PurchaseType: SchemaOrg.Value, Swift.Hashable {

        case purchaseTypeLease

        case purchaseTypeNewPurchase

        case purchaseTypeTradeIn

        case purchaseTypeUsedPurchase

        case instance(Instance)
    }
}

extension SchemaOrg.PurchaseType {

    public var term: Swift.String? {
        switch self {
        case .purchaseTypeLease:
            "PurchaseTypeLease"

        case .purchaseTypeNewPurchase:
            "PurchaseTypeNewPurchase"

        case .purchaseTypeTradeIn:
            "PurchaseTypeTradeIn"

        case .purchaseTypeUsedPurchase:
            "PurchaseTypeUsedPurchase"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "PurchaseTypeLease":
            self = .purchaseTypeLease
            return

        case "PurchaseTypeNewPurchase":
            self = .purchaseTypeNewPurchase
            return

        case "PurchaseTypeTradeIn":
            self = .purchaseTypeTradeIn
            return

        case "PurchaseTypeUsedPurchase":
            self = .purchaseTypeUsedPurchase
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .purchaseTypeLease:
            SchemaOrg.serialize(term: "PurchaseTypeLease")

        case .purchaseTypeNewPurchase:
            SchemaOrg.serialize(term: "PurchaseTypeNewPurchase")

        case .purchaseTypeTradeIn:
            SchemaOrg.serialize(term: "PurchaseTypeTradeIn")

        case .purchaseTypeUsedPurchase:
            SchemaOrg.serialize(term: "PurchaseTypeUsedPurchase")

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
