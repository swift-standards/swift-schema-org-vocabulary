extension SchemaOrg.MonetaryAmount {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Currency,
        SchemaOrg.Domain.MaxValue,
        SchemaOrg.Domain.MinValue,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidThrough,
        SchemaOrg.Domain.Value
    {}
}
