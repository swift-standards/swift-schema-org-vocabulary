extension SchemaOrg.Range {

    public enum EndOffset: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByIntegerLiteral, Swift.ExpressibleByFloatLiteral {

        case hyperTocEntry(SchemaOrg.HyperTocEntry)

        case number(Swift.Double)
    }
}

extension SchemaOrg.Range.EndOffset {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .hyperTocEntry(let value):
            SchemaOrg.HyperTocEntry.serialize(value)

        case .number(let value):
            Swift.Double.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.HyperTocEntry.deserialize(value) {
            return .hyperTocEntry(value)
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
