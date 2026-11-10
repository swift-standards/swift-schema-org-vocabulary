extension SchemaOrg.RadioSeries {

    public protocol `Protocol`:
        SchemaOrg.CreativeWorkSeries.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.ContainsSeason,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.Episode,
        SchemaOrg.Domain.Episodes,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.NumberOfEpisodes,
        SchemaOrg.Domain.NumberOfSeasons,
        SchemaOrg.Domain.ProductionCompany,
        SchemaOrg.Domain.Season,
        SchemaOrg.Domain.Seasons,
        SchemaOrg.Domain.Trailer
    {}
}
