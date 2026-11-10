extension SchemaOrg.Key where V == SchemaOrg.Review {

    public static var associatedClaimReview: Self {
        Self("associatedClaimReview")
    }

    public static var associatedMediaReview: Self {
        Self("associatedMediaReview")
    }

    public static var associatedReview: Self {
        Self("associatedReview")
    }

    public static var resultReview: Self {
        Self("resultReview")
    }

    public static var review: Self {
        Self("review")
    }

    public static var reviews: Self {
        Self("reviews")
    }
}
