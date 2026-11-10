extension ISO_8601.CalendarDate: SchemaOrg.Value {

    public static func serialize(_ value: ISO_8601.CalendarDate) -> W3C_JSON_LD.Value {
        .string(value.extended)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> ISO_8601.CalendarDate? {
        value.literal?.string.flatMap { ISO_8601.CalendarDate(extended: $0) }
    }
}
