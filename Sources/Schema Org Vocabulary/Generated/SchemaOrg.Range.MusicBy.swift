extension SchemaOrg.Range {

    public enum MusicBy: SchemaOrg.Value, Swift.Hashable {

        case musicGroup(SchemaOrg.MusicGroup)

        case person(SchemaOrg.Person)
    }
}

extension SchemaOrg.Range.MusicBy {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .musicGroup(let value):
            SchemaOrg.MusicGroup.serialize(value)

        case .person(let value):
            SchemaOrg.Person.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MusicGroup.deserialize(value) {
            return .musicGroup(value)
        }
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        return nil
    }
}
