extension SchemaOrg.ServicePeriod {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.BusinessDays,
        SchemaOrg.Domain.CutoffTime,
        SchemaOrg.Domain.Duration
    {}
}
