extension SchemaOrg.Domain {

    public protocol ReviewAspect: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ReviewAspect {

    public var reviewAspect: SchemaOrg.Range.ReviewAspect? {
        get { self[first: "reviewAspect"] }
        set { self[first: "reviewAspect"] = newValue }
    }
}
