extension SchemaOrg.MediaObject {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Duration,
        SchemaOrg.Domain.EncodingFormat,
        SchemaOrg.Domain.EndTime,
        SchemaOrg.Domain.Height,
        SchemaOrg.Domain.IneligibleRegion,
        SchemaOrg.Domain.InterpretedAsClaim,
        SchemaOrg.Domain.ProductionCompany,
        SchemaOrg.Domain.RequiresSubscription,
        SchemaOrg.Domain.StartTime,
        SchemaOrg.Domain.Width
    {}
}

extension SchemaOrg.MediaObject.`Protocol` {

    public var associatedArticle: SchemaOrg.NewsArticle? {
        get { self[first: "associatedArticle"] }
        set { self[first: "associatedArticle"] = newValue }
    }

    public var bitrate: Swift.String? {
        get { self[first: "bitrate"] }
        set { self[first: "bitrate"] = newValue }
    }

    public var contentSize: Swift.String? {
        get { self[first: "contentSize"] }
        set { self[first: "contentSize"] = newValue }
    }

    public var contentUrl: RFC_3986.URI? {
        get { self[first: "contentUrl"] }
        set { self[first: "contentUrl"] = newValue }
    }

    public var embedUrl: RFC_3986.URI? {
        get { self[first: "embedUrl"] }
        set { self[first: "embedUrl"] = newValue }
    }

    public var encodesCreativeWork: SchemaOrg.CreativeWork? {
        get { self[first: "encodesCreativeWork"] }
        set { self[first: "encodesCreativeWork"] = newValue }
    }

    public var playerType: Swift.String? {
        get { self[first: "playerType"] }
        set { self[first: "playerType"] = newValue }
    }

    public var regionsAllowed: SchemaOrg.Place? {
        get { self[first: "regionsAllowed"] }
        set { self[first: "regionsAllowed"] = newValue }
    }

    public var sha256: Swift.String? {
        get { self[first: "sha256"] }
        set { self[first: "sha256"] = newValue }
    }

    public var uploadDate: SchemaOrg.Range.UploadDate? {
        get { self[first: "uploadDate"] }
        set { self[first: "uploadDate"] = newValue }
    }
}
