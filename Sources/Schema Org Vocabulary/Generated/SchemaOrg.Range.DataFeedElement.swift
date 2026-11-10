extension SchemaOrg.Range {

    public enum DataFeedElement: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case dataFeedItem(SchemaOrg.DataFeedItem)

        case text(Swift.String)

        case thing(SchemaOrg.Thing)
    }
}

extension SchemaOrg.Range.DataFeedElement {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .dataFeedItem(let value):
            SchemaOrg.DataFeedItem.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .thing(let value):
            SchemaOrg.Thing.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DataFeedItem.deserialize(value) {
            return .dataFeedItem(value)
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
