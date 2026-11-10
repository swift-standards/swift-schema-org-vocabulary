extension SchemaOrg.Range {

    public enum CheckinTime: SchemaOrg.Value, Swift.Hashable {

        case dateTime(ISO_8601.DateTime)

        case time(ISO_8601.Time)
    }
}

extension SchemaOrg.Range.CheckinTime {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .dateTime(let value):
            ISO_8601.DateTime.serialize(value)

        case .time(let value):
            ISO_8601.Time.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = ISO_8601.DateTime.deserialize(value) {
            return .dateTime(value)
        }
        if let value = ISO_8601.Time.deserialize(value) {
            return .time(value)
        }
        return nil
    }
}
