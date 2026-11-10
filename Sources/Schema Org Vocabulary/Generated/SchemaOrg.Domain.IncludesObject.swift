extension SchemaOrg.Domain {

    public protocol IncludesObject: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IncludesObject {

    public var includesObject: SchemaOrg.TypeAndQuantityNode? {
        get { self[first: "includesObject"] }
        set { self[first: "includesObject"] = newValue }
    }
}
