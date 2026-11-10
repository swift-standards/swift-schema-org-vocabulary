extension ISO_8601.Duration: SchemaOrg.Value {

    public static func serialize(_ value: ISO_8601.Duration) -> W3C_JSON_LD.Value {
        .string(value.description)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> ISO_8601.Duration? {
        guard let text = value.literal?.string else { return nil }
        do throws(ISO_8601.Duration.Parser.Error) {
            return try ISO_8601.Duration(text)
        } catch {
            return nil
        }
    }
}
