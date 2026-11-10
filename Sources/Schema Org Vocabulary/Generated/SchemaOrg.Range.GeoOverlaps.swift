extension SchemaOrg.Range {

    public enum GeoOverlaps: SchemaOrg.Value, Swift.Hashable {

        case geospatialGeometry(SchemaOrg.GeospatialGeometry)

        case place(SchemaOrg.Place)
    }
}

extension SchemaOrg.Range.GeoOverlaps {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .geospatialGeometry(let value):
            SchemaOrg.GeospatialGeometry.serialize(value)

        case .place(let value):
            SchemaOrg.Place.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.GeospatialGeometry.deserialize(value) {
            return .geospatialGeometry(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        return nil
    }
}
