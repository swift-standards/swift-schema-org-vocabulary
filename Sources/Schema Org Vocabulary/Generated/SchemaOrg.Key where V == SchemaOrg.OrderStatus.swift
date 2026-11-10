extension SchemaOrg.Key where V == SchemaOrg.OrderStatus {

    public static var orderItemStatus: Self {
        Self("orderItemStatus")
    }

    public static var orderStatus: Self {
        Self("orderStatus")
    }
}
