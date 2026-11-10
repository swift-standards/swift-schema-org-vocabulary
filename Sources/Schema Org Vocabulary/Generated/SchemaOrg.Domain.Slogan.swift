extension SchemaOrg.Domain {

    public protocol Slogan: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Slogan {

    public var slogan: Swift.String? {
        get { self[first: "slogan"] }
        set { self[first: "slogan"] = newValue }
    }
}
