extension Double: SchemaOrg.Value {

    public static func serialize(_ value: Double) -> W3C_JSON_LD.Value {
        if value.rounded() == value, let integer = Int(exactly: value) {
            return .number(RFC_8259.Number(integer))
        }
        return .number(RFC_8259.Number(value))
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Double? {
        guard let literal = value.literal else { return nil }
        if let number = literal.number {
            return number.double
        }
        guard let text = literal.string, let double = Double(text), double.isFinite else { return nil }
        return double
    }
}
