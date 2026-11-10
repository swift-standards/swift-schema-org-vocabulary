extension SchemaOrg.Report {

    public protocol `Protocol`: SchemaOrg.Article.`Protocol` {}
}

extension SchemaOrg.Report.`Protocol` {

    public var reportNumber: Swift.String? {
        get { self[first: "reportNumber"] }
        set { self[first: "reportNumber"] = newValue }
    }
}
