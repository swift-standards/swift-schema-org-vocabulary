extension SchemaOrg.Domain {

    public protocol Members: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Members {

    public var members: SchemaOrg.Range.Members? {
        get { self[first: "members"] }
        set { self[first: "members"] = newValue }
    }
}
