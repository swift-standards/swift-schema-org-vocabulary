extension SchemaOrg.Domain {

    public protocol PriceType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PriceType {

    public var priceType: SchemaOrg.Range.PriceType? {
        get { self[first: "priceType"] }
        set { self[first: "priceType"] = newValue }
    }
}
