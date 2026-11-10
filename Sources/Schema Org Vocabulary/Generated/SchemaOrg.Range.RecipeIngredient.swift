extension SchemaOrg.Range {

    public enum RecipeIngredient: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case itemList(SchemaOrg.ItemList)

        case propertyValue(SchemaOrg.PropertyValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.RecipeIngredient {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itemList(let value):
            SchemaOrg.ItemList.serialize(value)

        case .propertyValue(let value):
            SchemaOrg.PropertyValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PropertyValue.deserialize(value) {
            return .propertyValue(value)
        }
        if let value = SchemaOrg.ItemList.deserialize(value) {
            return .itemList(value)
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
