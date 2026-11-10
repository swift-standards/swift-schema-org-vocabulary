extension SchemaOrg.HyperToc {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.AssociatedMedia
    {}
}

extension SchemaOrg.HyperToc.`Protocol` {

    public var tocEntry: SchemaOrg.HyperTocEntry? {
        get { self[first: "tocEntry"] }
        set { self[first: "tocEntry"] = newValue }
    }
}
