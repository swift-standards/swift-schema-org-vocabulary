extension SchemaOrg.Domain {

    public protocol PriceCurrency: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PriceCurrency {

    public var priceCurrency: Swift.String? {
        get { self[first: "priceCurrency"] }
        set { self[first: "priceCurrency"] = newValue }
    }
}
