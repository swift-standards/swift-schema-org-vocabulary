extension SchemaOrg.OrderItem {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.OrderDelivery,
        SchemaOrg.Domain.OrderedItem
    {}
}

extension SchemaOrg.OrderItem.`Protocol` {

    public var orderItemNumber: Swift.String? {
        get { self[first: "orderItemNumber"] }
        set { self[first: "orderItemNumber"] = newValue }
    }

    public var orderItemStatus: SchemaOrg.OrderStatus? {
        get { self[first: "orderItemStatus"] }
        set { self[first: "orderItemStatus"] = newValue }
    }

    public var orderQuantity: SchemaOrg.Range.OrderQuantity? {
        get { self[first: "orderQuantity"] }
        set { self[first: "orderQuantity"] = newValue }
    }
}
