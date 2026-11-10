extension SchemaOrg.Range {

    public enum FoodEstablishment: SchemaOrg.Value, Swift.Hashable {

        case foodEstablishment(SchemaOrg.FoodEstablishment)

        case place(SchemaOrg.Place)
    }
}

extension SchemaOrg.Range.FoodEstablishment {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .foodEstablishment(let value):
            SchemaOrg.FoodEstablishment.serialize(value)

        case .place(let value):
            SchemaOrg.Place.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.FoodEstablishment.deserialize(value) {
            return .foodEstablishment(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        return nil
    }
}
