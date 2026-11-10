extension SchemaOrg.Domain {

    public protocol DeliveryTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DeliveryTime {

    public var deliveryTime: SchemaOrg.ShippingDeliveryTime? {
        get { self[first: "deliveryTime"] }
        set { self[first: "deliveryTime"] = newValue }
    }
}
