extension SchemaOrg.Domain {

    public protocol HasMerchantReturnPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasMerchantReturnPolicy {

    public var hasMerchantReturnPolicy: SchemaOrg.MerchantReturnPolicy? {
        get { self[first: "hasMerchantReturnPolicy"] }
        set { self[first: "hasMerchantReturnPolicy"] = newValue }
    }
}
