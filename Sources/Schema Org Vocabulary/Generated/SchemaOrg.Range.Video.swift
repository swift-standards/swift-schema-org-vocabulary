extension SchemaOrg.Range {

    public enum Video: SchemaOrg.Value, Swift.Hashable {

        case clip(SchemaOrg.Clip)

        case videoObject(SchemaOrg.VideoObject)
    }
}

extension SchemaOrg.Range.Video {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .clip(let value):
            SchemaOrg.Clip.serialize(value)

        case .videoObject(let value):
            SchemaOrg.VideoObject.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.VideoObject.deserialize(value) {
            return .videoObject(value)
        }
        if let value = SchemaOrg.Clip.deserialize(value) {
            return .clip(value)
        }
        return nil
    }
}
