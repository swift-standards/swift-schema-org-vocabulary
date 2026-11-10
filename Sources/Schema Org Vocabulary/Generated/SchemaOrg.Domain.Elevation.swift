extension SchemaOrg.Domain {

    public protocol Elevation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Elevation {

    public var elevation: SchemaOrg.Range.Elevation? {
        get { self[first: "elevation"] }
        set { self[first: "elevation"] = newValue }
    }
}
