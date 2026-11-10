extension SchemaOrg.Domain {

    public protocol DisplayLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DisplayLocation {

    public var displayLocation: SchemaOrg.Place? {
        get { self[first: "displayLocation"] }
        set { self[first: "displayLocation"] = newValue }
    }
}
