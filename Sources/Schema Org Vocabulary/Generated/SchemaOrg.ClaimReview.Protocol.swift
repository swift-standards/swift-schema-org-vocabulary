extension SchemaOrg.ClaimReview {

    public protocol `Protocol`: SchemaOrg.Review.`Protocol` {}
}

extension SchemaOrg.ClaimReview.`Protocol` {

    public var claimReviewed: Swift.String? {
        get { self[first: "claimReviewed"] }
        set { self[first: "claimReviewed"] = newValue }
    }
}
