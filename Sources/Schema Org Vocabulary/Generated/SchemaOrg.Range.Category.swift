extension SchemaOrg.Range {

    public enum Category: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case categoryCode(SchemaOrg.CategoryCode)

        case physicalActivityCategory(SchemaOrg.PhysicalActivityCategory)

        case text(Swift.String)

        case thing(SchemaOrg.Thing)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.Category {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .categoryCode(let value):
            SchemaOrg.CategoryCode.serialize(value)

        case .physicalActivityCategory(let value):
            SchemaOrg.PhysicalActivityCategory.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .thing(let value):
            SchemaOrg.Thing.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PhysicalActivityCategory.deserialize(value) {
            return .physicalActivityCategory(value)
        }
        if let value = SchemaOrg.CategoryCode.deserialize(value) {
            return .categoryCode(value)
        }
        if let value = SchemaOrg.Thing.deserialize(value) {
            return .thing(value)
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
