extension SchemaOrg.Range {

    public enum ApplicationDeadline: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case date(ISO_8601.CalendarDate)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ApplicationDeadline {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .date(let value):
            ISO_8601.CalendarDate.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = ISO_8601.CalendarDate.deserialize(value) {
            return .date(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
