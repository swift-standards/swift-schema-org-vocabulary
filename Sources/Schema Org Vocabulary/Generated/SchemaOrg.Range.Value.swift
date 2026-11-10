extension SchemaOrg.Range {

    public enum Value: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral, Swift.ExpressibleByIntegerLiteral, Swift.ExpressibleByFloatLiteral {

        case boolean(Swift.Bool)

        case number(Swift.Double)

        case qualitativeValue(SchemaOrg.QualitativeValue)

        case structuredValue(SchemaOrg.StructuredValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Value {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .boolean(let value):
            Swift.Bool.serialize(value)

        case .number(let value):
            Swift.Double.serialize(value)

        case .qualitativeValue(let value):
            SchemaOrg.QualitativeValue.serialize(value)

        case .structuredValue(let value):
            SchemaOrg.StructuredValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QualitativeValue.deserialize(value) {
            return .qualitativeValue(value)
        }
        if let value = SchemaOrg.StructuredValue.deserialize(value) {
            return .structuredValue(value)
        }
        if let value = Swift.Bool.deserialize(value) {
            return .boolean(value)
        }
        if let value = Swift.Double.deserialize(value) {
            return .number(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }

    public init(integerLiteral value: Swift.Int) {
        self = .number(Swift.Double(value))
    }

    public init(floatLiteral value: Swift.Double) {
        self = .number(value)
    }
}
