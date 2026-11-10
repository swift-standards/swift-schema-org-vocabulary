extension SchemaOrg.Range {

    public enum ActionPlatform: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case digitalPlatformEnumeration(SchemaOrg.DigitalPlatformEnumeration)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.ActionPlatform {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .digitalPlatformEnumeration(let value):
            SchemaOrg.DigitalPlatformEnumeration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DigitalPlatformEnumeration.deserialize(value) {
            return .digitalPlatformEnumeration(value)
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
