extension SchemaOrg.Range {

    public enum OrderedItem: SchemaOrg.Value, Swift.Hashable {

        case orderItem(SchemaOrg.OrderItem)

        case product(SchemaOrg.Product)

        case service(SchemaOrg.Service)
    }
}

extension SchemaOrg.Range.OrderedItem {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .orderItem(let value):
            SchemaOrg.OrderItem.serialize(value)

        case .product(let value):
            SchemaOrg.Product.serialize(value)

        case .service(let value):
            SchemaOrg.Service.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.OrderItem.deserialize(value) {
            return .orderItem(value)
        }
        if let value = SchemaOrg.Service.deserialize(value) {
            return .service(value)
        }
        if let value = SchemaOrg.Product.deserialize(value) {
            return .product(value)
        }
        return nil
    }
}
