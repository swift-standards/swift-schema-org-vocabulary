extension SchemaOrg {

    public enum DeliveryMethod: SchemaOrg.Value, Swift.Hashable {

        case lockerDelivery

        case onSitePickup

        case parcelService

        case instance(Instance)
    }
}

extension SchemaOrg.DeliveryMethod {

    public var term: Swift.String? {
        switch self {
        case .lockerDelivery:
            "LockerDelivery"

        case .onSitePickup:
            "OnSitePickup"

        case .parcelService:
            "ParcelService"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "LockerDelivery":
            self = .lockerDelivery
            return

        case "OnSitePickup":
            self = .onSitePickup
            return

        case "ParcelService":
            self = .parcelService
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .lockerDelivery:
            SchemaOrg.serialize(term: "LockerDelivery")

        case .onSitePickup:
            SchemaOrg.serialize(term: "OnSitePickup")

        case .parcelService:
            SchemaOrg.serialize(term: "ParcelService")

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
