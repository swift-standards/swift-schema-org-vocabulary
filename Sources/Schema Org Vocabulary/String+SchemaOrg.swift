extension String: SchemaOrg.Value {

    public static func serialize(_ value: String) -> W3C_JSON_LD.Value {
        .string(value)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> String? {
        value.literal?.string
    }
}
