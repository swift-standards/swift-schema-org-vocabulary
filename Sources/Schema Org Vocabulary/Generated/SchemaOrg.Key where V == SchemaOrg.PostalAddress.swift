extension SchemaOrg.Key where V == SchemaOrg.PostalAddress {

    public static var billingAddress: Self {
        Self("billingAddress")
    }

    public static var deliveryAddress: Self {
        Self("deliveryAddress")
    }

    public static var legalAddress: Self {
        Self("legalAddress")
    }

    public static var originAddress: Self {
        Self("originAddress")
    }

    public static var servicePostalAddress: Self {
        Self("servicePostalAddress")
    }
}
