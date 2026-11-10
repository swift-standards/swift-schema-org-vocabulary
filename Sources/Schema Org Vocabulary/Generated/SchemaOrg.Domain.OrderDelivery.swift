extension SchemaOrg.Domain {

    public protocol OrderDelivery: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.OrderDelivery {

    public var orderDelivery: SchemaOrg.ParcelDelivery? {
        get { self[first: "orderDelivery"] }
        set { self[first: "orderDelivery"] = newValue }
    }
}
