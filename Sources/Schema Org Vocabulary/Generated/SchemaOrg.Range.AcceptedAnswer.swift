extension SchemaOrg.Range {

    public enum AcceptedAnswer: SchemaOrg.Value, Swift.Hashable {

        case answer(SchemaOrg.Answer)

        case itemList(SchemaOrg.ItemList)
    }
}

extension SchemaOrg.Range.AcceptedAnswer {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .answer(let value):
            SchemaOrg.Answer.serialize(value)

        case .itemList(let value):
            SchemaOrg.ItemList.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Answer.deserialize(value) {
            return .answer(value)
        }
        if let value = SchemaOrg.ItemList.deserialize(value) {
            return .itemList(value)
        }
        return nil
    }
}
