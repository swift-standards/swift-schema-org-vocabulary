extension SchemaOrg.Range {

    public enum Temporal: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case dateTime(ISO_8601.DateTime)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Temporal {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .dateTime(let value):
            ISO_8601.DateTime.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = ISO_8601.DateTime.deserialize(value) {
            return .dateTime(value)
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
