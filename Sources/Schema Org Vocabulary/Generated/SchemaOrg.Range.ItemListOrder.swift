extension SchemaOrg.Range {

    public enum ItemListOrder: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case itemListOrderType(SchemaOrg.ItemListOrderType)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ItemListOrder {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itemListOrderType(let value):
            SchemaOrg.ItemListOrderType.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ItemListOrderType.deserialize(value) {
            return .itemListOrderType(value)
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
