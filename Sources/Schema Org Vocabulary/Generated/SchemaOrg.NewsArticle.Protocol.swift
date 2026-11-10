extension SchemaOrg.NewsArticle {

    public protocol `Protocol`: SchemaOrg.Article.`Protocol` {}
}

extension SchemaOrg.NewsArticle.`Protocol` {

    public var dateline: Swift.String? {
        get { self[first: "dateline"] }
        set { self[first: "dateline"] = newValue }
    }

    public var printColumn: Swift.String? {
        get { self[first: "printColumn"] }
        set { self[first: "printColumn"] = newValue }
    }

    public var printEdition: Swift.String? {
        get { self[first: "printEdition"] }
        set { self[first: "printEdition"] = newValue }
    }

    public var printPage: Swift.String? {
        get { self[first: "printPage"] }
        set { self[first: "printPage"] = newValue }
    }

    public var printSection: Swift.String? {
        get { self[first: "printSection"] }
        set { self[first: "printSection"] = newValue }
    }
}
