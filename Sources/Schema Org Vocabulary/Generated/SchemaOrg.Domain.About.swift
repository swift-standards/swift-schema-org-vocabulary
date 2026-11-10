extension SchemaOrg.Domain {

    public protocol About: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.About {

    public var about: SchemaOrg.Thing? {
        get { self[first: "about"] }
        set { self[first: "about"] = newValue }
    }
}
