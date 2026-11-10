extension SchemaOrg.Range {

    public enum RepeatFrequency: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case duration(ISO_8601.Duration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.RepeatFrequency {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .duration(let value):
            ISO_8601.Duration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = ISO_8601.Duration.deserialize(value) {
            return .duration(value)
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
