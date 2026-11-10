extension SchemaOrg.Domain {

    public protocol FromLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FromLocation {

    public var fromLocation: SchemaOrg.Place? {
        get { self[first: "fromLocation"] }
        set { self[first: "fromLocation"] = newValue }
    }
}
