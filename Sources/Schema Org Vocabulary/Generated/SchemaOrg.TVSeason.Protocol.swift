extension SchemaOrg.TVSeason {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.CreativeWorkSeason.`Protocol`,
        SchemaOrg.Domain.CountryOfOrigin,
        SchemaOrg.Domain.PartOfTVSeries,
        SchemaOrg.Domain.TitleEIDR
    {}
}
