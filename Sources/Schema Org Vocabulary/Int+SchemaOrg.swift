extension Int: SchemaOrg.Value {

    public static func serialize(_ value: Int) -> W3C_JSON_LD.Value {
        .number(RFC_8259.Number(value))
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Int? {
        guard let literal = value.literal else { return nil }
        if let number = literal.number {
            return number.isInteger ? number.int : nil
        }
        return literal.string.flatMap { Int($0) }
    }
}
