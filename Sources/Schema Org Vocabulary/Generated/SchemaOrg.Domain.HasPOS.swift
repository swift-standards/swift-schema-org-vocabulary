extension SchemaOrg.Domain {

    public protocol HasPOS: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasPOS {

    public var hasPOS: SchemaOrg.Place? {
        get { self[first: "hasPOS"] }
        set { self[first: "hasPOS"] = newValue }
    }
}
