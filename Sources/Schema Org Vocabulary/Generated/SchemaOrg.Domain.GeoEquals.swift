extension SchemaOrg.Domain {

    public protocol GeoEquals: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoEquals {

    public var geoEquals: SchemaOrg.Range.GeoEquals? {
        get { self[first: "geoEquals"] }
        set { self[first: "geoEquals"] = newValue }
    }
}
