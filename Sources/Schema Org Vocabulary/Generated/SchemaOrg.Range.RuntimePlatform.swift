extension SchemaOrg.Range {

    public enum RuntimePlatform: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case runtimePlatform(SchemaOrg.RuntimePlatform)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.RuntimePlatform {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .runtimePlatform(let value):
            SchemaOrg.RuntimePlatform.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.RuntimePlatform.deserialize(value) {
            return .runtimePlatform(value)
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
