extension SchemaOrg.Range {

    public enum SuitableForDiet: SchemaOrg.Value, Swift.Hashable {

        case diet(SchemaOrg.Diet)

        case restrictedDiet(SchemaOrg.RestrictedDiet)
    }
}

extension SchemaOrg.Range.SuitableForDiet {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .diet(let value):
            SchemaOrg.Diet.serialize(value)

        case .restrictedDiet(let value):
            SchemaOrg.RestrictedDiet.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.RestrictedDiet.deserialize(value) {
            return .restrictedDiet(value)
        }
        if let value = SchemaOrg.Diet.deserialize(value) {
            return .diet(value)
        }
        return nil
    }
}
