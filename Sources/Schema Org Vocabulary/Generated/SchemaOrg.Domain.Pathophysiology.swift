extension SchemaOrg.Domain {

    public protocol Pathophysiology: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Pathophysiology {

    public var pathophysiology: Swift.String? {
        get { self[first: "pathophysiology"] }
        set { self[first: "pathophysiology"] = newValue }
    }
}
