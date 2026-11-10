extension SchemaOrg.Range {

    public enum SubjectOf: SchemaOrg.Value, Swift.Hashable {

        case creativeWork(SchemaOrg.CreativeWork)

        case event(SchemaOrg.Event)
    }
}

extension SchemaOrg.Range.SubjectOf {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)

        case .event(let value):
            SchemaOrg.Event.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
        }
        if let value = SchemaOrg.Event.deserialize(value) {
            return .event(value)
        }
        return nil
    }
}
