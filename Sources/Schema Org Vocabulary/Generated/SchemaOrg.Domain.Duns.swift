extension SchemaOrg.Domain {

    public protocol Duns: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Duns {

    public var duns: Swift.String? {
        get { self[first: "duns"] }
        set { self[first: "duns"] = newValue }
    }
}
