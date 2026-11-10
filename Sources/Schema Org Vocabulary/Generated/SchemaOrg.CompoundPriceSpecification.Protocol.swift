extension SchemaOrg.CompoundPriceSpecification {

    public protocol `Protocol`:
        SchemaOrg.PriceSpecification.`Protocol`,
        SchemaOrg.Domain.PriceType
    {}
}

extension SchemaOrg.CompoundPriceSpecification.`Protocol` {

    public var priceComponent: SchemaOrg.PriceSpecification? {
        get { self[first: "priceComponent"] }
        set { self[first: "priceComponent"] = newValue }
    }
}
