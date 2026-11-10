extension SchemaOrg.Domain {

    public protocol OrderedItem: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.OrderedItem {

    public var orderedItem: SchemaOrg.Range.OrderedItem? {
        get { self[first: "orderedItem"] }
        set { self[first: "orderedItem"] = newValue }
    }
}
