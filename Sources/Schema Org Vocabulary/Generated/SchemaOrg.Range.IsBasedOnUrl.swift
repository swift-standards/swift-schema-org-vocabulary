extension SchemaOrg.Range {

    public enum IsBasedOnUrl: SchemaOrg.Value, Swift.Hashable {

        case creativeWork(SchemaOrg.CreativeWork)

        case product(SchemaOrg.Product)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.IsBasedOnUrl {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)

        case .product(let value):
            SchemaOrg.Product.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
        }
        if let value = SchemaOrg.Product.deserialize(value) {
            return .product(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        return nil
    }
}
