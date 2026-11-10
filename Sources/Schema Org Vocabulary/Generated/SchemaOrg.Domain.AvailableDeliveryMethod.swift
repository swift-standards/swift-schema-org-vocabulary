extension SchemaOrg.Domain {

    public protocol AvailableDeliveryMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AvailableDeliveryMethod {

    public var availableDeliveryMethod: SchemaOrg.DeliveryMethod? {
        get { self[first: "availableDeliveryMethod"] }
        set { self[first: "availableDeliveryMethod"] = newValue }
    }
}
