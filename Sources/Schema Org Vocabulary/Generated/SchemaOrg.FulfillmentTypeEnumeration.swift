extension SchemaOrg {

    public enum FulfillmentTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case fulfillmentTypeCollectionPoint

        case fulfillmentTypeDelivery

        case fulfillmentTypePickupDropoff

        case fulfillmentTypePickupInStore

        case fulfillmentTypeScheduledDelivery

        case instance(Instance)
    }
}

extension SchemaOrg.FulfillmentTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .fulfillmentTypeCollectionPoint:
            "FulfillmentTypeCollectionPoint"

        case .fulfillmentTypeDelivery:
            "FulfillmentTypeDelivery"

        case .fulfillmentTypePickupDropoff:
            "FulfillmentTypePickupDropoff"

        case .fulfillmentTypePickupInStore:
            "FulfillmentTypePickupInStore"

        case .fulfillmentTypeScheduledDelivery:
            "FulfillmentTypeScheduledDelivery"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "FulfillmentTypeCollectionPoint":
            self = .fulfillmentTypeCollectionPoint
            return

        case "FulfillmentTypeDelivery":
            self = .fulfillmentTypeDelivery
            return

        case "FulfillmentTypePickupDropoff":
            self = .fulfillmentTypePickupDropoff
            return

        case "FulfillmentTypePickupInStore":
            self = .fulfillmentTypePickupInStore
            return

        case "FulfillmentTypeScheduledDelivery":
            self = .fulfillmentTypeScheduledDelivery
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .fulfillmentTypeCollectionPoint:
            SchemaOrg.serialize(term: "FulfillmentTypeCollectionPoint")

        case .fulfillmentTypeDelivery:
            SchemaOrg.serialize(term: "FulfillmentTypeDelivery")

        case .fulfillmentTypePickupDropoff:
            SchemaOrg.serialize(term: "FulfillmentTypePickupDropoff")

        case .fulfillmentTypePickupInStore:
            SchemaOrg.serialize(term: "FulfillmentTypePickupInStore")

        case .fulfillmentTypeScheduledDelivery:
            SchemaOrg.serialize(term: "FulfillmentTypeScheduledDelivery")

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
