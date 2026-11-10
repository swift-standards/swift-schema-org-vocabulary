extension SchemaOrg.Domain {

    public protocol Telephone: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Telephone {

    public var telephone: Swift.String? {
        get { self[first: "telephone"] }
        set { self[first: "telephone"] = newValue }
    }
}
