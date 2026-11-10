extension SchemaOrg.Range {

    public enum ObservationAbout: SchemaOrg.Value, Swift.Hashable {

        case place(SchemaOrg.Place)

        case thing(SchemaOrg.Thing)
    }
}

extension SchemaOrg.Range.ObservationAbout {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .place(let value):
            SchemaOrg.Place.serialize(value)

        case .thing(let value):
            SchemaOrg.Thing.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        if let value = SchemaOrg.Thing.deserialize(value) {
            return .thing(value)
        }
        return nil
    }
}
