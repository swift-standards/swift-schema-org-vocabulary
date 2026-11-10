extension SchemaOrg.Range {

    public enum SupersededBy: SchemaOrg.Value, Swift.Hashable {

        case `class`(SchemaOrg.Class)

        case enumeration(SchemaOrg.Enumeration)

        case property(SchemaOrg.Property)
    }
}

extension SchemaOrg.Range.SupersededBy {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .`class`(let value):
            SchemaOrg.Class.serialize(value)

        case .enumeration(let value):
            SchemaOrg.Enumeration.serialize(value)

        case .property(let value):
            SchemaOrg.Property.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Enumeration.deserialize(value) {
            return .enumeration(value)
        }
        if let value = SchemaOrg.Class.deserialize(value) {
            return .`class`(value)
        }
        if let value = SchemaOrg.Property.deserialize(value) {
            return .property(value)
        }
        return nil
    }
}
