extension SchemaOrg.Domain {

    public protocol Xpath: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Xpath {

    public var xpath: Swift.String? {
        get { self[first: "xpath"] }
        set { self[first: "xpath"] = newValue }
    }
}
