extension SchemaOrg.Range {

    public enum Itinerary: SchemaOrg.Value, Swift.Hashable {

        case itemList(SchemaOrg.ItemList)

        case place(SchemaOrg.Place)
    }
}

extension SchemaOrg.Range.Itinerary {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itemList(let value):
            SchemaOrg.ItemList.serialize(value)

        case .place(let value):
            SchemaOrg.Place.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ItemList.deserialize(value) {
            return .itemList(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
        }
        return nil
    }
}
