extension SchemaOrg.Article {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.PageEnd,
        SchemaOrg.Domain.PageStart,
        SchemaOrg.Domain.Pagination,
        SchemaOrg.Domain.Speakable,
        SchemaOrg.Domain.WordCount
    {}
}

extension SchemaOrg.Article.`Protocol` {

    public var articleBody: Swift.String? {
        get { self[first: "articleBody"] }
        set { self[first: "articleBody"] = newValue }
    }

    public var articleSection: Swift.String? {
        get { self[first: "articleSection"] }
        set { self[first: "articleSection"] = newValue }
    }

    public var backstory: SchemaOrg.Range.Backstory? {
        get { self[first: "backstory"] }
        set { self[first: "backstory"] = newValue }
    }
}
