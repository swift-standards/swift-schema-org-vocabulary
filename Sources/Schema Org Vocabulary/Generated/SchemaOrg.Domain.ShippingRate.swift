extension SchemaOrg.Domain {

    public protocol ShippingRate: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ShippingRate {

    public var shippingRate: SchemaOrg.Range.ShippingRate? {
        get { self[first: "shippingRate"] }
        set { self[first: "shippingRate"] = newValue }
    }
}
