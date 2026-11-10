extension SchemaOrg.MediaReviewItem {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.MediaReviewItem.`Protocol` {

    public var mediaItemAppearance: SchemaOrg.MediaObject? {
        get { self[first: "mediaItemAppearance"] }
        set { self[first: "mediaItemAppearance"] = newValue }
    }
}
