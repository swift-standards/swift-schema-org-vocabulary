extension SchemaOrg.RealEstateListing {

    public protocol `Protocol`:
        SchemaOrg.WebPage.`Protocol`,
        SchemaOrg.Domain.DatePosted,
        SchemaOrg.Domain.LeaseLength
    {}
}
