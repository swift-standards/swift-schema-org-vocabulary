extension SchemaOrg.Range {

    public enum MathExpression: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case solveMathAction(SchemaOrg.SolveMathAction)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.MathExpression {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .solveMathAction(let value):
            SchemaOrg.SolveMathAction.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.SolveMathAction.deserialize(value) {
            return .solveMathAction(value)
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
