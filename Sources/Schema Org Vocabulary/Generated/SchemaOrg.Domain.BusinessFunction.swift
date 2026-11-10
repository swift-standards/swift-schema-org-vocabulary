extension SchemaOrg.Domain {

    public protocol BusinessFunction: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.BusinessFunction {

    public var businessFunction: SchemaOrg.BusinessFunction? {
        get { self[first: "businessFunction"] }
        set { self[first: "businessFunction"] = newValue }
    }
}
