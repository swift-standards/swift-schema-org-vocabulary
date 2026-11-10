extension SchemaOrg.Domain {

    public protocol Review: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Review {

    public var review: SchemaOrg.Review? {
        get { self[first: "review"] }
        set { self[first: "review"] = newValue }
    }
}
