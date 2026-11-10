extension SchemaOrg.Range {

    public enum DiseaseSpreadStatistics: SchemaOrg.Value, Swift.Hashable {

        case dataset(SchemaOrg.Dataset)

        case observation(SchemaOrg.Observation)

        case url(RFC_3986.URI)

        case webContent(SchemaOrg.WebContent)
    }
}

extension SchemaOrg.Range.DiseaseSpreadStatistics {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .dataset(let value):
            SchemaOrg.Dataset.serialize(value)

        case .observation(let value):
            SchemaOrg.Observation.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)

        case .webContent(let value):
            SchemaOrg.WebContent.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Observation.deserialize(value) {
            return .observation(value)
        }
        if let value = SchemaOrg.Dataset.deserialize(value) {
            return .dataset(value)
        }
        if let value = SchemaOrg.WebContent.deserialize(value) {
            return .webContent(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
