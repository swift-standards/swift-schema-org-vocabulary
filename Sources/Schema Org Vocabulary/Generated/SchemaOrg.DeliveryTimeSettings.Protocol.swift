extension SchemaOrg.DeliveryTimeSettings {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.DeliveryTime,
        SchemaOrg.Domain.IsUnlabelledFallback,
        SchemaOrg.Domain.ShippingDestination,
        SchemaOrg.Domain.TransitTimeLabel
    {}
}
