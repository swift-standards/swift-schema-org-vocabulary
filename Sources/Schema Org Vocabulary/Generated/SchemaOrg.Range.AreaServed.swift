extension SchemaOrg.Range {

    public enum AreaServed: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case administrativeArea(SchemaOrg.AdministrativeArea)

        case geoShape(SchemaOrg.GeoShape)

        case place(SchemaOrg.Place)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.AreaServed {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .administrativeArea(let value):
            SchemaOrg.AdministrativeArea.serialize(value)

        case .geoShape(let value):
            SchemaOrg.GeoShape.serialize(value)

        case .place(let value):
            SchemaOrg.Place.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
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
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
