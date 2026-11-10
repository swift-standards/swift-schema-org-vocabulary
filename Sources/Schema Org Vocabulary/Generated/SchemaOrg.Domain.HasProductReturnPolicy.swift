extension SchemaOrg.Domain {

    public protocol HasProductReturnPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasProductReturnPolicy {

    public var hasProductReturnPolicy: SchemaOrg.ProductReturnPolicy? {
        get { self[first: "hasProductReturnPolicy"] }
        set { self[first: "hasProductReturnPolicy"] = newValue }
    }
}
