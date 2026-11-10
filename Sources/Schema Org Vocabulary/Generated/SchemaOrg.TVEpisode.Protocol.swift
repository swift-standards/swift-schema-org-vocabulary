extension SchemaOrg.TVEpisode {

    public protocol `Protocol`:
        SchemaOrg.Episode.`Protocol`,
        SchemaOrg.Domain.CountryOfOrigin,
        SchemaOrg.Domain.PartOfTVSeries,
        SchemaOrg.Domain.SubtitleLanguage,
        SchemaOrg.Domain.TitleEIDR
    {}
}
