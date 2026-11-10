extension SchemaOrg.Domain {

    public protocol GeoTouches: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoTouches {

    public var geoTouches: SchemaOrg.Range.GeoTouches? {
        get { self[first: "geoTouches"] }
        set { self[first: "geoTouches"] = newValue }
    }
}
