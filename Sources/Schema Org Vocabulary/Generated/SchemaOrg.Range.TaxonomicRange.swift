extension SchemaOrg.Range {

    public enum TaxonomicRange: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case definedTerm(SchemaOrg.DefinedTerm)

        case taxon(SchemaOrg.Taxon)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.TaxonomicRange {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .taxon(let value):
            SchemaOrg.Taxon.serialize(value)

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
        if let value = SchemaOrg.Taxon.deserialize(value) {
            return .taxon(value)
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
