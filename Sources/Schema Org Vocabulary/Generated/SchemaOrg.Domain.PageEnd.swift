extension SchemaOrg.Domain {

    public protocol PageEnd: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PageEnd {

    public var pageEnd: SchemaOrg.Range.PageEnd? {
        get { self[first: "pageEnd"] }
        set { self[first: "pageEnd"] = newValue }
    }
}
