extension SchemaOrg.Domain {

    public protocol Longitude: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Longitude {

    public var longitude: SchemaOrg.Range.Longitude? {
        get { self[first: "longitude"] }
        set { self[first: "longitude"] = newValue }
    }
}
