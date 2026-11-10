extension SchemaOrg.Range {

    public enum HomeTeam: SchemaOrg.Value, Swift.Hashable {

        case person(SchemaOrg.Person)

        case sportsTeam(SchemaOrg.SportsTeam)
    }
}

extension SchemaOrg.Range.HomeTeam {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .person(let value):
            SchemaOrg.Person.serialize(value)

        case .sportsTeam(let value):
            SchemaOrg.SportsTeam.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.SportsTeam.deserialize(value) {
            return .sportsTeam(value)
        }
        if let value = SchemaOrg.Person.deserialize(value) {
            return .person(value)
        }
        return nil
    }
}
