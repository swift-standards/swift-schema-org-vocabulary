extension SchemaOrg.Domain {

    public protocol GeoOverlaps: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoOverlaps {

    public var geoOverlaps: SchemaOrg.Range.GeoOverlaps? {
        get { self[first: "geoOverlaps"] }
        set { self[first: "geoOverlaps"] = newValue }
    }
}
