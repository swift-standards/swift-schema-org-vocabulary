extension SchemaOrg.Range {

    public enum Photos: SchemaOrg.Value, Swift.Hashable {

        case imageObject(SchemaOrg.ImageObject)

        case photograph(SchemaOrg.Photograph)
    }
}

extension SchemaOrg.Range.Photos {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .imageObject(let value):
            SchemaOrg.ImageObject.serialize(value)

        case .photograph(let value):
            SchemaOrg.Photograph.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ImageObject.deserialize(value) {
            return .imageObject(value)
        }
        if let value = SchemaOrg.Photograph.deserialize(value) {
            return .photograph(value)
        }
        return nil
    }
}
