extension SchemaOrg.Review {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.ItemReviewed,
        SchemaOrg.Domain.NegativeNotes,
        SchemaOrg.Domain.PositiveNotes,
        SchemaOrg.Domain.ReviewAspect
    {}
}

extension SchemaOrg.Review.`Protocol` {

    public var associatedClaimReview: SchemaOrg.Review? {
        get { self[first: "associatedClaimReview"] }
        set { self[first: "associatedClaimReview"] = newValue }
    }

    public var associatedMediaReview: SchemaOrg.Review? {
        get { self[first: "associatedMediaReview"] }
        set { self[first: "associatedMediaReview"] = newValue }
    }

    public var associatedReview: SchemaOrg.Review? {
        get { self[first: "associatedReview"] }
        set { self[first: "associatedReview"] = newValue }
    }

    public var reviewBody: Swift.String? {
        get { self[first: "reviewBody"] }
        set { self[first: "reviewBody"] = newValue }
    }

    public var reviewRating: SchemaOrg.Rating? {
        get { self[first: "reviewRating"] }
        set { self[first: "reviewRating"] = newValue }
    }
}
