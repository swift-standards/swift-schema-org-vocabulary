extension SchemaOrg.Range {

    public enum BusinessDays: SchemaOrg.Value, Swift.Hashable {

        case dayOfWeek(SchemaOrg.DayOfWeek)

        case openingHoursSpecification(SchemaOrg.OpeningHoursSpecification)
    }
}

extension SchemaOrg.Range.BusinessDays {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .dayOfWeek(let value):
            SchemaOrg.DayOfWeek.serialize(value)

        case .openingHoursSpecification(let value):
            SchemaOrg.OpeningHoursSpecification.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DayOfWeek.deserialize(value) {
            return .dayOfWeek(value)
        }
        if let value = SchemaOrg.OpeningHoursSpecification.deserialize(value) {
            return .openingHoursSpecification(value)
        }
        return nil
    }
}
