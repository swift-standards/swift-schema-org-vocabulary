extension SchemaOrg.DataFeedItem {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.DateCreated,
        SchemaOrg.Domain.DateModified,
        SchemaOrg.Domain.Item
    {}
}

extension SchemaOrg.DataFeedItem.`Protocol` {

    public var dateDeleted: SchemaOrg.Range.DateDeleted? {
        get { self[first: "dateDeleted"] }
        set { self[first: "dateDeleted"] = newValue }
    }
}
