extension SchemaOrg.Range {

    public enum AnswerExplanation: SchemaOrg.Value, Swift.Hashable {

        case comment(SchemaOrg.Comment)

        case webContent(SchemaOrg.WebContent)
    }
}

extension SchemaOrg.Range.AnswerExplanation {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .comment(let value):
            SchemaOrg.Comment.serialize(value)

        case .webContent(let value):
            SchemaOrg.WebContent.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Comment.deserialize(value) {
            return .comment(value)
        }
        if let value = SchemaOrg.WebContent.deserialize(value) {
            return .webContent(value)
        }
        return nil
    }
}
