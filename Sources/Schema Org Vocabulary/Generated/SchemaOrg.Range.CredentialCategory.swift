extension SchemaOrg.Range {

    public enum CredentialCategory: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case definedTerm(SchemaOrg.DefinedTerm)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.CredentialCategory {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
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
