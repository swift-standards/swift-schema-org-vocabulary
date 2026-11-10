extension SchemaOrg.Range {

    public enum SuggestedGender: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case genderType(SchemaOrg.GenderType)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.SuggestedGender {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .genderType(let value):
            SchemaOrg.GenderType.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.GenderType.deserialize(value) {
            return .genderType(value)
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
