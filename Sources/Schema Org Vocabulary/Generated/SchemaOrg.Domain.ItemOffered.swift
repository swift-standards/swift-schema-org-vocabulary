extension SchemaOrg.Domain {

    public protocol ItemOffered: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ItemOffered {

    public var itemOffered: SchemaOrg.Range.ItemOffered? {
        get { self[first: "itemOffered"] }
        set { self[first: "itemOffered"] = newValue }
    }
}
