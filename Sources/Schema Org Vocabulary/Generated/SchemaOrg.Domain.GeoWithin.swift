extension SchemaOrg.Domain {

    public protocol GeoWithin: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoWithin {

    public var geoWithin: SchemaOrg.Range.GeoWithin? {
        get { self[first: "geoWithin"] }
        set { self[first: "geoWithin"] = newValue }
    }
}
