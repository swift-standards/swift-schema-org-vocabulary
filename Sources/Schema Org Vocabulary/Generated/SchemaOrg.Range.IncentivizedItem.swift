extension SchemaOrg.Range {

    public enum IncentivizedItem: SchemaOrg.Value, Swift.Hashable {

        case definedTerm(SchemaOrg.DefinedTerm)

        case product(SchemaOrg.Product)
    }
}

extension SchemaOrg.Range.IncentivizedItem {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .product(let value):
            SchemaOrg.Product.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
        }
        if let value = SchemaOrg.Product.deserialize(value) {
            return .product(value)
        }
        return nil
    }
}
