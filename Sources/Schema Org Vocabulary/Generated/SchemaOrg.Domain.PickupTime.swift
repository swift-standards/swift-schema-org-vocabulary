extension SchemaOrg.Domain {

    public protocol PickupTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PickupTime {

    public var pickupTime: ISO_8601.DateTime? {
        get { self[first: "pickupTime"] }
        set { self[first: "pickupTime"] = newValue }
    }
}
