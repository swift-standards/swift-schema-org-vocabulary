extension SchemaOrg.LiveBlogPosting {

    public protocol `Protocol`: SchemaOrg.BlogPosting.`Protocol` {}
}

extension SchemaOrg.LiveBlogPosting.`Protocol` {

    public var coverageEndTime: ISO_8601.DateTime? {
        get { self[first: "coverageEndTime"] }
        set { self[first: "coverageEndTime"] = newValue }
    }

    public var coverageStartTime: ISO_8601.DateTime? {
        get { self[first: "coverageStartTime"] }
        set { self[first: "coverageStartTime"] = newValue }
    }

    public var liveBlogUpdate: SchemaOrg.BlogPosting? {
        get { self[first: "liveBlogUpdate"] }
        set { self[first: "liveBlogUpdate"] = newValue }
    }
}
