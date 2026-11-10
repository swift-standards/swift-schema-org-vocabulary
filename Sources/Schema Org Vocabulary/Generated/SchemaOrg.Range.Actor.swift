extension SchemaOrg.Range {

    public enum Actor: SchemaOrg.Value, Swift.Hashable {

        case performingGroup(SchemaOrg.PerformingGroup)

        case person(SchemaOrg.Person)
    }
}

extension SchemaOrg.Range.Actor {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .performingGroup(let value):
            SchemaOrg.PerformingGroup.serialize(value)

        case .person(let value):
            SchemaOrg.Person.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PerformingGroup.deserialize(value) {
            return .performingGroup(value)
        }
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        return nil
    }
}
