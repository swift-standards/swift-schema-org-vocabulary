extension SchemaOrg.Domain {

    public protocol Keywords: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Keywords {

    public var keywords: SchemaOrg.Range.Keywords? {
        get { self[first: "keywords"] }
        set { self[first: "keywords"] = newValue }
    }
}
