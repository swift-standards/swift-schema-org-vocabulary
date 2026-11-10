extension SchemaOrg.Domain {

    public protocol HasOfferCatalog: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasOfferCatalog {

    public var hasOfferCatalog: SchemaOrg.OfferCatalog? {
        get { self[first: "hasOfferCatalog"] }
        set { self[first: "hasOfferCatalog"] = newValue }
    }
}
