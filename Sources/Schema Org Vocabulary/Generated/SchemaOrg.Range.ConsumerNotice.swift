extension SchemaOrg.Range {

    public enum ConsumerNotice: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case text(Swift.String)

        case textObject(SchemaOrg.TextObject)

        case url(RFC_3986.URI)

        case webContent(SchemaOrg.WebContent)
    }
}

extension SchemaOrg.Range.ConsumerNotice {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .text(let value):
            Swift.String.serialize(value)

        case .textObject(let value):
            SchemaOrg.TextObject.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)

        case .webContent(let value):
            SchemaOrg.WebContent.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.TextObject.deserialize(value) {
            return .textObject(value)
        }
        if let value = SchemaOrg.WebContent.deserialize(value) {
            return .webContent(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
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
