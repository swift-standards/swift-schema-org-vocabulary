extension SchemaOrg.Range {

    public enum DiversityStaffingReport: SchemaOrg.Value, Swift.Hashable {

        case article(SchemaOrg.Article)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.DiversityStaffingReport {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .article(let value):
            SchemaOrg.Article.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Article.deserialize(value) {
            return .article(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
