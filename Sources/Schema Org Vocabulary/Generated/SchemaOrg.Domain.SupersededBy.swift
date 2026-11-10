extension SchemaOrg.Domain {

    public protocol SupersededBy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SupersededBy {

    public var supersededBy: SchemaOrg.Range.SupersededBy? {
        get { self[first: "supersededBy"] }
        set { self[first: "supersededBy"] = newValue }
    }
}
