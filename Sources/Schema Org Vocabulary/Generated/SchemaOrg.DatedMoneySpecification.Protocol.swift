extension SchemaOrg.DatedMoneySpecification {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Amount,
        SchemaOrg.Domain.Currency,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.StartDate
    {}
}
