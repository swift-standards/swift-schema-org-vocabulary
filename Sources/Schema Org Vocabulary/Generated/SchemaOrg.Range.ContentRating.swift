extension SchemaOrg.Range {

    public enum ContentRating: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case rating(SchemaOrg.Rating)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ContentRating {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .rating(let value):
            SchemaOrg.Rating.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Rating.deserialize(value) {
            return .rating(value)
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
