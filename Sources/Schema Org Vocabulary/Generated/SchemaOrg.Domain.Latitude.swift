extension SchemaOrg.Domain {

    public protocol Latitude: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Latitude {

    public var latitude: SchemaOrg.Range.Latitude? {
        get { self[first: "latitude"] }
        set { self[first: "latitude"] = newValue }
    }
}
