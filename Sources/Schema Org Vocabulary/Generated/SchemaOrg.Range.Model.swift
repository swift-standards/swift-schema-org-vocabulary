extension SchemaOrg.Range {

    public enum Model: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case productModel(SchemaOrg.ProductModel)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Model {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .productModel(let value):
            SchemaOrg.ProductModel.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ProductModel.deserialize(value) {
            return .productModel(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
