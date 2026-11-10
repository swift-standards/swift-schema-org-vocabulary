extension SchemaOrg.MovieSeries {

    public protocol `Protocol`:
        SchemaOrg.CreativeWorkSeries.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.ProductionCompany,
        SchemaOrg.Domain.Trailer
    {}
}
