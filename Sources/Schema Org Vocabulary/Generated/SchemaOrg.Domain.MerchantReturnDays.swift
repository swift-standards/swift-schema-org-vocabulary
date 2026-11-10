extension SchemaOrg.Domain {

    public protocol MerchantReturnDays: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MerchantReturnDays {

    public var merchantReturnDays: SchemaOrg.Range.MerchantReturnDays? {
        get { self[first: "merchantReturnDays"] }
        set { self[first: "merchantReturnDays"] = newValue }
    }
}
