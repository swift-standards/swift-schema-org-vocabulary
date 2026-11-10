extension SchemaOrg.Domain {

    public protocol Reviews: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Reviews {

    public var reviews: SchemaOrg.Review? {
        get { self[first: "reviews"] }
        set { self[first: "reviews"] = newValue }
    }
}
