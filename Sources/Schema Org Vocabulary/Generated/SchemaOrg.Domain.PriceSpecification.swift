extension SchemaOrg.Domain {

    public protocol PriceSpecification: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PriceSpecification {

    public var priceSpecification: SchemaOrg.PriceSpecification? {
        get { self[first: "priceSpecification"] }
        set { self[first: "priceSpecification"] = newValue }
    }
}
