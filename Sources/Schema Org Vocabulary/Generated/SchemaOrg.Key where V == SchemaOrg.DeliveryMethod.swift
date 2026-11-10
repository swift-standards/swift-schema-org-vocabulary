extension SchemaOrg.Key where V == SchemaOrg.DeliveryMethod {

    public static var appliesToDeliveryMethod: Self {
        Self("appliesToDeliveryMethod")
    }

    public static var availableDeliveryMethod: Self {
        Self("availableDeliveryMethod")
    }

    public static var deliveryMethod: Self {
        Self("deliveryMethod")
    }

    public static var hasDeliveryMethod: Self {
        Self("hasDeliveryMethod")
    }
}
