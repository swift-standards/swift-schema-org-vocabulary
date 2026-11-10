extension SchemaOrg.Blog {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Issn
    {}
}

extension SchemaOrg.Blog.`Protocol` {

    public var blogPost: SchemaOrg.BlogPosting? {
        get { self[first: "blogPost"] }
        set { self[first: "blogPost"] = newValue }
    }

    public var blogPosts: SchemaOrg.BlogPosting? {
        get { self[first: "blogPosts"] }
        set { self[first: "blogPosts"] = newValue }
    }
}
