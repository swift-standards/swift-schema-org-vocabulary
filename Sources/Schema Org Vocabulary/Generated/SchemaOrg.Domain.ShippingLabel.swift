extension SchemaOrg.Domain {

    public protocol ShippingLabel: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ShippingLabel {

    public var shippingLabel: Swift.String? {
        get { self[first: "shippingLabel"] }
        set { self[first: "shippingLabel"] = newValue }
    }
}
