extension SchemaOrg.Range {

    public enum HasMenu: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case menu(SchemaOrg.Menu)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.HasMenu {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .menu(let value):
            SchemaOrg.Menu.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Menu.deserialize(value) {
            return .menu(value)
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
