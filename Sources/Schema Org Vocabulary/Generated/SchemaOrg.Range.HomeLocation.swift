extension SchemaOrg.Range {

    public enum HomeLocation: SchemaOrg.Value, Swift.Hashable {

        case contactPoint(SchemaOrg.ContactPoint)

        case place(SchemaOrg.Place)
    }
}

extension SchemaOrg.Range.HomeLocation {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .contactPoint(let value):
            SchemaOrg.ContactPoint.serialize(value)

        case .place(let value):
            SchemaOrg.Place.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ContactPoint.deserialize(value) {
            return .contactPoint(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        return nil
    }
}
