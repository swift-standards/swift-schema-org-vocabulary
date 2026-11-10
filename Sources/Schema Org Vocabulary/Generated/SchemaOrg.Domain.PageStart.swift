extension SchemaOrg.Domain {

    public protocol PageStart: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PageStart {

    public var pageStart: SchemaOrg.Range.PageStart? {
        get { self[first: "pageStart"] }
        set { self[first: "pageStart"] = newValue }
    }
}
