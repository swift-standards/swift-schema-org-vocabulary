extension SchemaOrg.Domain {

    public protocol PrepTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PrepTime {

    public var prepTime: ISO_8601.Duration? {
        get { self[first: "prepTime"] }
        set { self[first: "prepTime"] = newValue }
    }
}
