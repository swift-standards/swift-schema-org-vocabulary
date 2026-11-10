extension SchemaOrg.Range {

    public enum NegativeNotes: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case itemList(SchemaOrg.ItemList)

        case listItem(SchemaOrg.ListItem)

        case text(Swift.String)

        case webContent(SchemaOrg.WebContent)
    }
}

extension SchemaOrg.Range.NegativeNotes {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itemList(let value):
            SchemaOrg.ItemList.serialize(value)

        case .listItem(let value):
            SchemaOrg.ListItem.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .webContent(let value):
            SchemaOrg.WebContent.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ItemList.deserialize(value) {
            return .itemList(value)
        }
        if let value = SchemaOrg.ListItem.deserialize(value) {
            return .listItem(value)
        }
        if let value = SchemaOrg.WebContent.deserialize(value) {
            return .webContent(value)
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
