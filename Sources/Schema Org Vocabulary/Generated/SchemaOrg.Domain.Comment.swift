extension SchemaOrg.Domain {

    public protocol Comment: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Comment {

    public var comment: SchemaOrg.Comment? {
        get { self[first: "comment"] }
        set { self[first: "comment"] = newValue }
    }
}
