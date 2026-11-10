extension SchemaOrg.Domain {

    public protocol PickupLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PickupLocation {

    public var pickupLocation: SchemaOrg.Place? {
        get { self[first: "pickupLocation"] }
        set { self[first: "pickupLocation"] = newValue }
    }
}
