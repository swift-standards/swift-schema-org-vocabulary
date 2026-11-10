extension SchemaOrg.Domain {

    public protocol HasDeliveryMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasDeliveryMethod {

    public var hasDeliveryMethod: SchemaOrg.DeliveryMethod? {
        get { self[first: "hasDeliveryMethod"] }
        set { self[first: "hasDeliveryMethod"] = newValue }
    }
}
