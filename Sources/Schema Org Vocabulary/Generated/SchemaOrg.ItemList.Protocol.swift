extension SchemaOrg.ItemList {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.ItemList.`Protocol` {

    public var aggregateElement: SchemaOrg.Thing? {
        get { self[first: "aggregateElement"] }
        set { self[first: "aggregateElement"] = newValue }
    }

    public var itemListElement: SchemaOrg.Range.ItemListElement? {
        get { self[first: "itemListElement"] }
        set { self[first: "itemListElement"] = newValue }
    }

    public var itemListOrder: SchemaOrg.Range.ItemListOrder? {
        get { self[first: "itemListOrder"] }
        set { self[first: "itemListOrder"] = newValue }
    }

    public var numberOfItems: Swift.Int? {
        get { self[first: "numberOfItems"] }
        set { self[first: "numberOfItems"] = newValue }
    }
}
