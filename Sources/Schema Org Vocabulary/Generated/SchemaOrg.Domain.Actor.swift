extension SchemaOrg.Domain {

    public protocol Actor: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Actor {

    public var actor: SchemaOrg.Range.Actor? {
        get { self[first: "actor"] }
        set { self[first: "actor"] = newValue }
    }
}
