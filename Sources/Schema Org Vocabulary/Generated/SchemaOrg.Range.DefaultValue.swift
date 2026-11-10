extension SchemaOrg.Range {

    public enum DefaultValue: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case text(Swift.String)

        case thing(SchemaOrg.Thing)
    }
}

extension SchemaOrg.Range.DefaultValue {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .text(let value):
            Swift.String.serialize(value)

        case .thing(let value):
            SchemaOrg.Thing.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Thing.deserialize(value) {
            return .thing(value)
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
