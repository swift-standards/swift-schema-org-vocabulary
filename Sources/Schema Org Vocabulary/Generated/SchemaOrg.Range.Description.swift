extension SchemaOrg.Range {

    public enum Description: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case text(Swift.String)

        case textObject(SchemaOrg.TextObject)
    }
}

extension SchemaOrg.Range.Description {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .text(let value):
            Swift.String.serialize(value)

        case .textObject(let value):
            SchemaOrg.TextObject.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.TextObject.deserialize(value) {
            return .textObject(value)
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
