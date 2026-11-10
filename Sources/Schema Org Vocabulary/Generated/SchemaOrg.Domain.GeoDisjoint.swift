extension SchemaOrg.Domain {

    public protocol GeoDisjoint: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoDisjoint {

    public var geoDisjoint: SchemaOrg.Range.GeoDisjoint? {
        get { self[first: "geoDisjoint"] }
        set { self[first: "geoDisjoint"] = newValue }
    }
}
