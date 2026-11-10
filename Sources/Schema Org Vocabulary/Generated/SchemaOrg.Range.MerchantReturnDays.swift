extension SchemaOrg.Range {

    public enum MerchantReturnDays: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral {

        case date(ISO_8601.CalendarDate)

        case dateTime(ISO_8601.DateTime)

        case integer(Swift.Int)
    }
}

extension SchemaOrg.Range.MerchantReturnDays {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .date(let value):
            ISO_8601.CalendarDate.serialize(value)

        case .dateTime(let value):
            ISO_8601.DateTime.serialize(value)

        case .integer(let value):
            Swift.Int.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = Swift.Int.deserialize(value) {
            return .integer(value)
        }
        if let value = ISO_8601.CalendarDate.deserialize(value) {
            return .date(value)
        }
        if let value = ISO_8601.DateTime.deserialize(value) {
            return .dateTime(value)
        }
        return nil
    }

    public init(integerLiteral value: Swift.Int) {
        self = .integer(value)
    }
}
