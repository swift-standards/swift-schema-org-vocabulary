extension SchemaOrg.Domain {

    public protocol ToLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ToLocation {

    public var toLocation: SchemaOrg.Place? {
        get { self[first: "toLocation"] }
        set { self[first: "toLocation"] = newValue }
    }
}
