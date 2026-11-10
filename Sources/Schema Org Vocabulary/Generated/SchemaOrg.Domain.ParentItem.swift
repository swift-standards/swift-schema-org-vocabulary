extension SchemaOrg.Domain {

    public protocol ParentItem: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ParentItem {

    public var parentItem: SchemaOrg.Range.ParentItem? {
        get { self[first: "parentItem"] }
        set { self[first: "parentItem"] = newValue }
    }
}
