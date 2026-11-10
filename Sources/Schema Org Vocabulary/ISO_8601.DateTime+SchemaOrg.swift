extension ISO_8601.DateTime: SchemaOrg.Value {

    public static func serialize(_ value: ISO_8601.DateTime) -> W3C_JSON_LD.Value {
        .string(value.description)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> ISO_8601.DateTime? {
        guard let text = value.literal?.string else { return nil }
        do throws(ISO_8601.DateTime.Parser.Error) {
            return try ISO_8601.DateTime(text)
        } catch {
            return nil
        }
    }
}
