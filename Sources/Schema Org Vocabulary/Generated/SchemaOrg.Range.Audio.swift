extension SchemaOrg.Range {

    public enum Audio: SchemaOrg.Value, Swift.Hashable {

        case audioObject(SchemaOrg.AudioObject)

        case clip(SchemaOrg.Clip)

        case musicRecording(SchemaOrg.MusicRecording)
    }
}

extension SchemaOrg.Range.Audio {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .audioObject(let value):
            SchemaOrg.AudioObject.serialize(value)

        case .clip(let value):
            SchemaOrg.Clip.serialize(value)

        case .musicRecording(let value):
            SchemaOrg.MusicRecording.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.AudioObject.deserialize(value) {
            return .audioObject(value)
        }
        if let value = SchemaOrg.Clip.deserialize(value) {
            return .clip(value)
        }
        if let value = SchemaOrg.MusicRecording.deserialize(value) {
            return .musicRecording(value)
        }
        return nil
    }
}
