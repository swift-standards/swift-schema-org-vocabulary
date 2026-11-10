extension Bool: SchemaOrg.Value {

    public static func serialize(_ value: Bool) -> W3C_JSON_LD.Value {
        .literal(W3C_JSON_LD.Literal(.bool(value)))
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Bool? {
        if let bool = value.literal?.bool {
            return bool
        }
        switch SchemaOrg.term(of: value) {
        case "True":
            return true

        case "False":
            return false

        default:
            return nil
        }
    }
}
