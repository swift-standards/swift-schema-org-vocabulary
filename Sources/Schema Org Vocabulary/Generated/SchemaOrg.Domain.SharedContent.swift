extension SchemaOrg.Domain {

    public protocol SharedContent: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SharedContent {

    public var sharedContent: SchemaOrg.CreativeWork? {
        get { self[first: "sharedContent"] }
        set { self[first: "sharedContent"] = newValue }
    }
}
