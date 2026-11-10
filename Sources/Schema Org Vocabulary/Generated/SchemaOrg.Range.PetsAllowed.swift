extension SchemaOrg.Range {

    public enum PetsAllowed: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case boolean(Swift.Bool)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.PetsAllowed {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .boolean(let value):
            Swift.Bool.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = Swift.Bool.deserialize(value) {
            return .boolean(value)
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
