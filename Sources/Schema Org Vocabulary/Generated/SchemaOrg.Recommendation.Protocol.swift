extension SchemaOrg.Recommendation {

    public protocol `Protocol`:
        SchemaOrg.Review.`Protocol`,
        SchemaOrg.Domain.Category
    {}
}
