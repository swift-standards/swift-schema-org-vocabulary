extension SchemaOrg.Range {

    public enum Tool: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case howToTool(SchemaOrg.HowToTool)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Tool {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .howToTool(let value):
            SchemaOrg.HowToTool.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.HowToTool.deserialize(value) {
            return .howToTool(value)
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
