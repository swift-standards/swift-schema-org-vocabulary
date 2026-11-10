extension SchemaOrg.Domain {

    public protocol GeoContains: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoContains {

    public var geoContains: SchemaOrg.Range.GeoContains? {
        get { self[first: "geoContains"] }
        set { self[first: "geoContains"] = newValue }
    }
}
