extension SchemaOrg.Range {

    public enum IssueNumber: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral, Swift.ExpressibleByIntegerLiteral {

        case integer(Swift.Int)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.IssueNumber {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .integer(let value):
            Swift.Int.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = Swift.Int.deserialize(value) {
            return .integer(value)
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
        self = .integer(value)
    }
}
