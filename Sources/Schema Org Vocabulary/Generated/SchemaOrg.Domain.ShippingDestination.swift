extension SchemaOrg.Domain {

    public protocol ShippingDestination: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ShippingDestination {

    public var shippingDestination: SchemaOrg.DefinedRegion? {
        get { self[first: "shippingDestination"] }
        set { self[first: "shippingDestination"] = newValue }
    }
}
