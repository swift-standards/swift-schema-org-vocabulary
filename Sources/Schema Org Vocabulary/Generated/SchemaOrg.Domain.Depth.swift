extension SchemaOrg.Domain {

    public protocol Depth: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Depth {

    public var depth: SchemaOrg.Range.Depth? {
        get { self[first: "depth"] }
        set { self[first: "depth"] = newValue }
    }
}
