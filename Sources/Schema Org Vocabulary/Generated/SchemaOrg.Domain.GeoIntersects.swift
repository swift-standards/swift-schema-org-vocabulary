extension SchemaOrg.Domain {

    public protocol GeoIntersects: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoIntersects {

    public var geoIntersects: SchemaOrg.Range.GeoIntersects? {
        get { self[first: "geoIntersects"] }
        set { self[first: "geoIntersects"] = newValue }
    }
}
