extension SchemaOrg.Rating {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Author,
        SchemaOrg.Domain.ReviewAspect
    {}
}

extension SchemaOrg.Rating.`Protocol` {

    public var bestRating: SchemaOrg.Range.BestRating? {
        get { self[first: "bestRating"] }
        set { self[first: "bestRating"] = newValue }
    }

    public var ratingExplanation: Swift.String? {
        get { self[first: "ratingExplanation"] }
        set { self[first: "ratingExplanation"] = newValue }
    }

    public var ratingValue: SchemaOrg.Range.RatingValue? {
        get { self[first: "ratingValue"] }
        set { self[first: "ratingValue"] = newValue }
    }

    public var worstRating: SchemaOrg.Range.WorstRating? {
        get { self[first: "worstRating"] }
        set { self[first: "worstRating"] = newValue }
    }
}
