extension SchemaOrg.Range {

    public enum ItemListElement: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case listItem(SchemaOrg.ListItem)

        case text(Swift.String)

        case thing(SchemaOrg.Thing)
    }
}

extension SchemaOrg.Range.ItemListElement {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .listItem(let value):
            SchemaOrg.ListItem.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .thing(let value):
            SchemaOrg.Thing.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ListItem.deserialize(value) {
            return .listItem(value)
        }
        if let value = SchemaOrg.Thing.deserialize(value) {
            return .thing(value)
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
