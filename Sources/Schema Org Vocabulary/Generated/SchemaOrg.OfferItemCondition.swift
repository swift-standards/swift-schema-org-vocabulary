extension SchemaOrg {

    public enum OfferItemCondition: SchemaOrg.Value, Swift.Hashable {

        case damagedCondition

        case newCondition

        case refurbishedCondition

        case usedCondition

        case instance(Instance)
    }
}

extension SchemaOrg.OfferItemCondition {

    public var term: Swift.String? {
        switch self {
        case .damagedCondition:
            "DamagedCondition"

        case .newCondition:
            "NewCondition"

        case .refurbishedCondition:
            "RefurbishedCondition"

        case .usedCondition:
            "UsedCondition"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DamagedCondition":
            self = .damagedCondition
            return

        case "NewCondition":
            self = .newCondition
            return

        case "RefurbishedCondition":
            self = .refurbishedCondition
            return

        case "UsedCondition":
            self = .usedCondition
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .damagedCondition:
            SchemaOrg.serialize(term: "DamagedCondition")

        case .newCondition:
            SchemaOrg.serialize(term: "NewCondition")

        case .refurbishedCondition:
            SchemaOrg.serialize(term: "RefurbishedCondition")

        case .usedCondition:
            SchemaOrg.serialize(term: "UsedCondition")

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
