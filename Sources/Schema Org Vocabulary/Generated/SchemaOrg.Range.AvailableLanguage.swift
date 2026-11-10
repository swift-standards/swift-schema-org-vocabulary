extension SchemaOrg.Range {

    public enum AvailableLanguage: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case language(SchemaOrg.Language)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.AvailableLanguage {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .language(let value):
            SchemaOrg.Language.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Language.deserialize(value) {
            return .language(value)
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
