extension SchemaOrg.Domain {

    public protocol Contributor: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Contributor {

    public var contributor: SchemaOrg.Range.Contributor? {
        get { self[first: "contributor"] }
        set { self[first: "contributor"] = newValue }
    }
}
