extension SchemaOrg.Domain {

    public protocol Issn: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Issn {

    public var issn: Swift.String? {
        get { self[first: "issn"] }
        set { self[first: "issn"] = newValue }
    }
}
