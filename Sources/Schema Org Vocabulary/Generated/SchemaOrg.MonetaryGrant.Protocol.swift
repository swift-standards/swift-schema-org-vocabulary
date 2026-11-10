extension SchemaOrg.MonetaryGrant {

    public protocol `Protocol`:
        SchemaOrg.Grant.`Protocol`,
        SchemaOrg.Domain.Amount,
        SchemaOrg.Domain.Funder
    {}
}
