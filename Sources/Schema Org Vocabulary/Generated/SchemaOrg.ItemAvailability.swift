extension SchemaOrg {

    public enum ItemAvailability: SchemaOrg.Value, Swift.Hashable {

        case backOrder

        case discontinued

        case inStock

        case inStoreOnly

        case limitedAvailability

        case madeToOrder

        case onlineOnly

        case outOfStock

        case preOrder

        case preSale

        case reserved

        case soldOut

        case instance(Instance)
    }
}

extension SchemaOrg.ItemAvailability {

    public var term: Swift.String? {
        switch self {
        case .backOrder:
            "BackOrder"

        case .discontinued:
            "Discontinued"

        case .inStock:
            "InStock"

        case .inStoreOnly:
            "InStoreOnly"

        case .limitedAvailability:
            "LimitedAvailability"

        case .madeToOrder:
            "MadeToOrder"

        case .onlineOnly:
            "OnlineOnly"

        case .outOfStock:
            "OutOfStock"

        case .preOrder:
            "PreOrder"

        case .preSale:
            "PreSale"

        case .reserved:
            "Reserved"

        case .soldOut:
            "SoldOut"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "BackOrder":
            self = .backOrder
            return

        case "Discontinued":
            self = .discontinued
            return

        case "InStock":
            self = .inStock
            return

        case "InStoreOnly":
            self = .inStoreOnly
            return

        case "LimitedAvailability":
            self = .limitedAvailability
            return

        case "MadeToOrder":
            self = .madeToOrder
            return

        case "OnlineOnly":
            self = .onlineOnly
            return

        case "OutOfStock":
            self = .outOfStock
            return

        case "PreOrder":
            self = .preOrder
            return

        case "PreSale":
            self = .preSale
            return

        case "Reserved":
            self = .reserved
            return

        case "SoldOut":
            self = .soldOut
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .backOrder:
            SchemaOrg.serialize(term: "BackOrder")

        case .discontinued:
            SchemaOrg.serialize(term: "Discontinued")

        case .inStock:
            SchemaOrg.serialize(term: "InStock")

        case .inStoreOnly:
            SchemaOrg.serialize(term: "InStoreOnly")

        case .limitedAvailability:
            SchemaOrg.serialize(term: "LimitedAvailability")

        case .madeToOrder:
            SchemaOrg.serialize(term: "MadeToOrder")

        case .onlineOnly:
            SchemaOrg.serialize(term: "OnlineOnly")

        case .outOfStock:
            SchemaOrg.serialize(term: "OutOfStock")

        case .preOrder:
            SchemaOrg.serialize(term: "PreOrder")

        case .preSale:
            SchemaOrg.serialize(term: "PreSale")

        case .reserved:
            SchemaOrg.serialize(term: "Reserved")

        case .soldOut:
            SchemaOrg.serialize(term: "SoldOut")

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
