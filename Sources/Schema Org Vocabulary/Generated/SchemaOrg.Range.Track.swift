extension SchemaOrg.Range {

    public enum Track: SchemaOrg.Value, Swift.Hashable {

        case itemList(SchemaOrg.ItemList)

        case musicRecording(SchemaOrg.MusicRecording)
    }
}

extension SchemaOrg.Range.Track {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itemList(let value):
            SchemaOrg.ItemList.serialize(value)

        case .musicRecording(let value):
            SchemaOrg.MusicRecording.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ItemList.deserialize(value) {
            return .itemList(value)
        }
        if let value = SchemaOrg.MusicRecording.deserialize(value) {
            return .musicRecording(value)
        }
        return nil
    }
}
