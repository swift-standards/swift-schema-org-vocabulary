extension SchemaOrg.Range {

    public enum Geo: SchemaOrg.Value, Swift.Hashable {

        case geoCoordinates(SchemaOrg.GeoCoordinates)

        case geoShape(SchemaOrg.GeoShape)
    }
}

extension SchemaOrg.Range.Geo {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .geoCoordinates(let value):
            SchemaOrg.GeoCoordinates.serialize(value)

        case .geoShape(let value):
            SchemaOrg.GeoShape.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.GeoCoordinates.deserialize(value) {
            return .geoCoordinates(value)
        }
        if let value = SchemaOrg.GeoShape.deserialize(value) {
            return .geoShape(value)
        }
        return nil
    }
}
