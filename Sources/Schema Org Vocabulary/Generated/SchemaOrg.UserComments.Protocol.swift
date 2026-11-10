extension SchemaOrg.UserComments {

    public protocol `Protocol`:
        SchemaOrg.UserInteraction.`Protocol`,
        SchemaOrg.Domain.Creator
    {}
}

extension SchemaOrg.UserComments.`Protocol` {

    public var commentText: Swift.String? {
        get { self[first: "commentText"] }
        set { self[first: "commentText"] = newValue }
    }

    public var commentTime: SchemaOrg.Range.CommentTime? {
        get { self[first: "commentTime"] }
        set { self[first: "commentTime"] = newValue }
    }

    public var discusses: SchemaOrg.CreativeWork? {
        get { self[first: "discusses"] }
        set { self[first: "discusses"] = newValue }
    }

    public var replyToUrl: RFC_3986.URI? {
        get { self[first: "replyToUrl"] }
        set { self[first: "replyToUrl"] = newValue }
    }
}
