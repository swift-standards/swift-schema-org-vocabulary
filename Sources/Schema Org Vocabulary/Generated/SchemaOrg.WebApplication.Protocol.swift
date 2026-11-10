extension SchemaOrg.WebApplication {

    public protocol `Protocol`: SchemaOrg.SoftwareApplication.`Protocol` {}
}

extension SchemaOrg.WebApplication.`Protocol` {

    public var browserRequirements: Swift.String? {
        get { self[first: "browserRequirements"] }
        set { self[first: "browserRequirements"] = newValue }
    }
}
