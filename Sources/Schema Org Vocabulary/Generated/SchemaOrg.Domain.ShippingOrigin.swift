extension SchemaOrg.Domain {

    public protocol ShippingOrigin: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ShippingOrigin {

    public var shippingOrigin: SchemaOrg.DefinedRegion? {
        get { self[first: "shippingOrigin"] }
        set { self[first: "shippingOrigin"] = newValue }
    }
}
