extension SchemaOrg.MediaReview {

    public protocol `Protocol`: SchemaOrg.Review.`Protocol` {}
}

extension SchemaOrg.MediaReview.`Protocol` {

    public var mediaAuthenticityCategory: SchemaOrg.MediaManipulationRatingEnumeration? {
        get { self[first: "mediaAuthenticityCategory"] }
        set { self[first: "mediaAuthenticityCategory"] = newValue }
    }

    public var originalMediaContextDescription: Swift.String? {
        get { self[first: "originalMediaContextDescription"] }
        set { self[first: "originalMediaContextDescription"] = newValue }
    }

    public var originalMediaLink: SchemaOrg.Range.OriginalMediaLink? {
        get { self[first: "originalMediaLink"] }
        set { self[first: "originalMediaLink"] = newValue }
    }
}
