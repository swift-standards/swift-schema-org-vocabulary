extension SchemaOrg.Range {

    public enum ReviewAspect: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case structuredValue(SchemaOrg.StructuredValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ReviewAspect {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .structuredValue(let value):
            SchemaOrg.StructuredValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.StructuredValue.deserialize(value) {
            return .structuredValue(value)
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
