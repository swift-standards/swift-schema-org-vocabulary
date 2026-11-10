extension SchemaOrg.Brand {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.Logo,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Slogan
    {}
}
