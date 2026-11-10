extension SchemaOrg.Range {

    public enum IsVariantOf: SchemaOrg.Value, Swift.Hashable {

        case productGroup(SchemaOrg.ProductGroup)

        case productModel(SchemaOrg.ProductModel)
    }
}

extension SchemaOrg.Range.IsVariantOf {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .productGroup(let value):
            SchemaOrg.ProductGroup.serialize(value)

        case .productModel(let value):
            SchemaOrg.ProductModel.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.ProductGroup.deserialize(value) {
            return .productGroup(value)
        }
        if let value = SchemaOrg.ProductModel.deserialize(value) {
            return .productModel(value)
        }
        return nil
    }
}
