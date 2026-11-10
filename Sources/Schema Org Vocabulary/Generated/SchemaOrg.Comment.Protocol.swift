extension SchemaOrg.Comment {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.ParentItem,
        SchemaOrg.Domain.SharedContent
    {}
}

extension SchemaOrg.Comment.`Protocol` {

    public var downvoteCount: Swift.Int? {
        get { self[first: "downvoteCount"] }
        set { self[first: "downvoteCount"] = newValue }
    }

    public var upvoteCount: Swift.Int? {
        get { self[first: "upvoteCount"] }
        set { self[first: "upvoteCount"] = newValue }
    }
}
