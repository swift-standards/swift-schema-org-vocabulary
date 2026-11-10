extension SchemaOrg.Range {

    public enum ParentItem: SchemaOrg.Value, Swift.Hashable {

        case comment(SchemaOrg.Comment)

        case creativeWork(SchemaOrg.CreativeWork)
    }
}

extension SchemaOrg.Range.ParentItem {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .comment(let value):
            SchemaOrg.Comment.serialize(value)

        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Comment.deserialize(value) {
            return .comment(value)
        }
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
        }
        return nil
    }
}
