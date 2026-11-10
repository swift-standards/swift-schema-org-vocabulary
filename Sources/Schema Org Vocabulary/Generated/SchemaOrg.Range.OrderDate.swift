extension SchemaOrg.Range {

    public enum OrderDate: SchemaOrg.Value, Swift.Hashable {

        case date(ISO_8601.CalendarDate)

        case dateTime(ISO_8601.DateTime)
    }
}

extension SchemaOrg.Range.OrderDate {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .date(let value):
            ISO_8601.CalendarDate.serialize(value)

        case .dateTime(let value):
            ISO_8601.DateTime.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = ISO_8601.CalendarDate.deserialize(value) {
            return .date(value)
        }
        if let value = ISO_8601.DateTime.deserialize(value) {
            return .dateTime(value)
        }
        return nil
    }
}
