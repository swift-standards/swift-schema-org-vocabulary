extension SchemaOrg.Domain {

    public protocol ReturnShippingFeesAmount: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ReturnShippingFeesAmount {

    public var returnShippingFeesAmount: SchemaOrg.MonetaryAmount? {
        get { self[first: "returnShippingFeesAmount"] }
        set { self[first: "returnShippingFeesAmount"] = newValue }
    }
}
