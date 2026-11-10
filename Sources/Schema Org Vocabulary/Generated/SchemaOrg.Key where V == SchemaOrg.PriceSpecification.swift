extension SchemaOrg.Key where V == SchemaOrg.PriceSpecification {

    public static var eligibleTransactionVolume: Self {
        Self("eligibleTransactionVolume")
    }

    public static var healthPlanCopay: Self {
        Self("healthPlanCopay")
    }

    public static var priceComponent: Self {
        Self("priceComponent")
    }

    public static var priceSpecification: Self {
        Self("priceSpecification")
    }
}
