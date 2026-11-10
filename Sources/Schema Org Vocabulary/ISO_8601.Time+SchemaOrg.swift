extension ISO_8601.Time: SchemaOrg.Value {

    public static func serialize(_ value: ISO_8601.Time) -> W3C_JSON_LD.Value {
        .string(value.description)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> ISO_8601.Time? {
        guard let text = value.literal?.string else { return nil }
        do throws(ISO_8601.Time.Parser.Error) {
            return try ISO_8601.Time.Parser.parse(text)
        } catch {
            return nil
        }
    }
}
