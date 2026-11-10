extension SchemaOrg.AggregateRating {

    public protocol `Protocol`:
        SchemaOrg.Rating.`Protocol`,
        SchemaOrg.Domain.ItemReviewed
    {}
}

extension SchemaOrg.AggregateRating.`Protocol` {

    public var ratingCount: Swift.Int? {
        get { self[first: "ratingCount"] }
        set { self[first: "ratingCount"] = newValue }
    }

    public var reviewCount: Swift.Int? {
        get { self[first: "reviewCount"] }
        set { self[first: "reviewCount"] = newValue }
    }
}
