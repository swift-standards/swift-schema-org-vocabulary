extension SchemaOrg {

    public enum IncentiveQualifiedExpenseType: SchemaOrg.Value, Swift.Hashable {

        case incentiveQualifiedExpenseTypeGoodsOnly

        case incentiveQualifiedExpenseTypeGoodsOrServices

        case incentiveQualifiedExpenseTypeServicesOnly

        case incentiveQualifiedExpenseTypeUtilityBill

        case instance(Instance)
    }
}

extension SchemaOrg.IncentiveQualifiedExpenseType {

    public var term: Swift.String? {
        switch self {
        case .incentiveQualifiedExpenseTypeGoodsOnly:
            "IncentiveQualifiedExpenseTypeGoodsOnly"

        case .incentiveQualifiedExpenseTypeGoodsOrServices:
            "IncentiveQualifiedExpenseTypeGoodsOrServices"

        case .incentiveQualifiedExpenseTypeServicesOnly:
            "IncentiveQualifiedExpenseTypeServicesOnly"

        case .incentiveQualifiedExpenseTypeUtilityBill:
            "IncentiveQualifiedExpenseTypeUtilityBill"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "IncentiveQualifiedExpenseTypeGoodsOnly":
            self = .incentiveQualifiedExpenseTypeGoodsOnly
            return

        case "IncentiveQualifiedExpenseTypeGoodsOrServices":
            self = .incentiveQualifiedExpenseTypeGoodsOrServices
            return

        case "IncentiveQualifiedExpenseTypeServicesOnly":
            self = .incentiveQualifiedExpenseTypeServicesOnly
            return

        case "IncentiveQualifiedExpenseTypeUtilityBill":
            self = .incentiveQualifiedExpenseTypeUtilityBill
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .incentiveQualifiedExpenseTypeGoodsOnly:
            SchemaOrg.serialize(term: "IncentiveQualifiedExpenseTypeGoodsOnly")

        case .incentiveQualifiedExpenseTypeGoodsOrServices:
            SchemaOrg.serialize(term: "IncentiveQualifiedExpenseTypeGoodsOrServices")

        case .incentiveQualifiedExpenseTypeServicesOnly:
            SchemaOrg.serialize(term: "IncentiveQualifiedExpenseTypeServicesOnly")

        case .incentiveQualifiedExpenseTypeUtilityBill:
            SchemaOrg.serialize(term: "IncentiveQualifiedExpenseTypeUtilityBill")

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
