extension SchemaOrg.Range {

    public enum ServiceArea: SchemaOrg.Value, Swift.Hashable {

        case administrativeArea(SchemaOrg.AdministrativeArea)

        case geoShape(SchemaOrg.GeoShape)

        case place(SchemaOrg.Place)
    }
}

extension SchemaOrg.Range.ServiceArea {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .administrativeArea(let value):
            SchemaOrg.AdministrativeArea.serialize(value)

        case .geoShape(let value):
            SchemaOrg.GeoShape.serialize(value)

        case .place(let value):
            SchemaOrg.Place.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.GeoShape.deserialize(value) {
            return .geoShape(value)
        }
        if let value = SchemaOrg.AdministrativeArea.deserialize(value) {
            return .administrativeArea(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        return nil
    }
}
