extension SchemaOrg.Range {

    public enum ProductSupported: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case product(SchemaOrg.Product)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ProductSupported {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .product(let value):
            SchemaOrg.Product.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Product.deserialize(value) {
            return .product(value)
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
