extension SchemaOrg.DeliveryChargeSpecification {

    public protocol `Protocol`:
        SchemaOrg.PriceSpecification.`Protocol`,
        SchemaOrg.Domain.AppliesToDeliveryMethod,
        SchemaOrg.Domain.AreaServed,
        SchemaOrg.Domain.EligibleRegion,
        SchemaOrg.Domain.IneligibleRegion
    {}
}
