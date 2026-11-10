extension SchemaOrg.Domain {

    public protocol DeliveryMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DeliveryMethod {

    public var deliveryMethod: SchemaOrg.DeliveryMethod? {
        get { self[first: "deliveryMethod"] }
        set { self[first: "deliveryMethod"] = newValue }
    }
}
