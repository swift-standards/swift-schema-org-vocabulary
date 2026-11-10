extension SchemaOrg.ShippingDeliveryTime {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.BusinessDays,
        SchemaOrg.Domain.CutoffTime,
        SchemaOrg.Domain.HandlingTime,
        SchemaOrg.Domain.TransitTime
    {}
}
