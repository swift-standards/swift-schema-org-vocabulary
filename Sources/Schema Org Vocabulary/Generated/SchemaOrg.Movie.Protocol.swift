extension SchemaOrg.Movie {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.CountryOfOrigin,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.Duration,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.ProductionCompany,
        SchemaOrg.Domain.SubtitleLanguage,
        SchemaOrg.Domain.TitleEIDR,
        SchemaOrg.Domain.Trailer
    {}
}
