extension SchemaOrg.AggregateOffer {

    public protocol `Protocol`:
        SchemaOrg.Offer.`Protocol`,
        SchemaOrg.Domain.Offers
    {}
}

extension SchemaOrg.AggregateOffer.`Protocol` {

    public var highPrice: SchemaOrg.Range.HighPrice? {
        get { self[first: "highPrice"] }
        set { self[first: "highPrice"] = newValue }
    }

    public var lowPrice: SchemaOrg.Range.LowPrice? {
        get { self[first: "lowPrice"] }
        set { self[first: "lowPrice"] = newValue }
    }

    public var offerCount: Swift.Int? {
        get { self[first: "offerCount"] }
        set { self[first: "offerCount"] = newValue }
    }
}
