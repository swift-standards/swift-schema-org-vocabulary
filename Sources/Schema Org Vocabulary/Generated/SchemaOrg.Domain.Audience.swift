extension SchemaOrg.Domain {

    public protocol Audience: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Audience {

    public var audience: SchemaOrg.Audience? {
        get { self[first: "audience"] }
        set { self[first: "audience"] = newValue }
    }
}
