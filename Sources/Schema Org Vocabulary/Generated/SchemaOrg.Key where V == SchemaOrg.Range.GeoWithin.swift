extension SchemaOrg.Key where V == SchemaOrg.Range.GeoWithin {

    public static var geoWithin: Self {
        Self("geoWithin")
    }
}
