extension SchemaOrg.GeospatialGeometry {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.GeoContains,
        SchemaOrg.Domain.GeoCoveredBy,
        SchemaOrg.Domain.GeoCovers,
        SchemaOrg.Domain.GeoCrosses,
        SchemaOrg.Domain.GeoDisjoint,
        SchemaOrg.Domain.GeoEquals,
        SchemaOrg.Domain.GeoIntersects,
        SchemaOrg.Domain.GeoOverlaps,
        SchemaOrg.Domain.GeoTouches,
        SchemaOrg.Domain.GeoWithin
    {}
}
