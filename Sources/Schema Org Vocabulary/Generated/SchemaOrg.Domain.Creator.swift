extension SchemaOrg.Domain {

    public protocol Creator: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Creator {

    public var creator: SchemaOrg.Range.Creator? {
        get { self[first: "creator"] }
        set { self[first: "creator"] = newValue }
    }
}
