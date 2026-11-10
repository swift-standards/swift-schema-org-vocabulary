extension SchemaOrg.Domain {

    public protocol Bed: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Bed {

    public var bed: SchemaOrg.Range.Bed? {
        get { self[first: "bed"] }
        set { self[first: "bed"] = newValue }
    }
}
