extension SchemaOrg.Domain {

    public protocol Responsibilities: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Responsibilities {

    public var responsibilities: Swift.String? {
        get { self[first: "responsibilities"] }
        set { self[first: "responsibilities"] = newValue }
    }
}
