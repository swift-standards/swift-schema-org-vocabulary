extension SchemaOrg.Range {

    public enum CashBack: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral, Swift.ExpressibleByFloatLiteral {

        case boolean(Swift.Bool)

        case number(Swift.Double)
    }
}

extension SchemaOrg.Range.CashBack {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .boolean(let value):
            Swift.Bool.serialize(value)

        case .number(let value):
            Swift.Double.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = Swift.Bool.deserialize(value) {
            return .boolean(value)
        }
        if let value = Swift.Double.deserialize(value) {
            return .number(value)
        }
        return nil
    }

    public init(integerLiteral value: Swift.Int) {
        self = .number(Swift.Double(value))
    }

    public init(floatLiteral value: Swift.Double) {
        self = .number(value)
    }
}
