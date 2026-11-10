extension SchemaOrg.Domain {

    public protocol GeoCovers: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoCovers {

    public var geoCovers: SchemaOrg.Range.GeoCovers? {
        get { self[first: "geoCovers"] }
        set { self[first: "geoCovers"] = newValue }
    }
}
