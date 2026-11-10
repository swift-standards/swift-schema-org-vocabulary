extension SchemaOrg.DataFeed {

    public protocol `Protocol`: SchemaOrg.Dataset.`Protocol` {}
}

extension SchemaOrg.DataFeed.`Protocol` {

    public var dataFeedElement: SchemaOrg.Range.DataFeedElement? {
        get { self[first: "dataFeedElement"] }
        set { self[first: "dataFeedElement"] = newValue }
    }
}
