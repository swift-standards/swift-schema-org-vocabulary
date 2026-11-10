extension SchemaOrg.ListItem {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Item,
        SchemaOrg.Domain.Position
    {}
}

extension SchemaOrg.ListItem.`Protocol` {

    public var nextItem: SchemaOrg.ListItem? {
        get { self[first: "nextItem"] }
        set { self[first: "nextItem"] = newValue }
    }

    public var previousItem: SchemaOrg.ListItem? {
        get { self[first: "previousItem"] }
        set { self[first: "previousItem"] = newValue }
    }
}
