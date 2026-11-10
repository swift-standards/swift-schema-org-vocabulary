extension SchemaOrg.Domain {

    public protocol Category: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Category {

    public var category: SchemaOrg.Range.Category? {
        get { self[first: "category"] }
        set { self[first: "category"] = newValue }
    }
}
