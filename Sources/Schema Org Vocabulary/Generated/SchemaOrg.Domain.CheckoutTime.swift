extension SchemaOrg.Domain {

    public protocol CheckoutTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CheckoutTime {

    public var checkoutTime: SchemaOrg.Range.CheckoutTime? {
        get { self[first: "checkoutTime"] }
        set { self[first: "checkoutTime"] = newValue }
    }
}
