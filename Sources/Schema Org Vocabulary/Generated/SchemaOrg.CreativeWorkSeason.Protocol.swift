extension SchemaOrg.CreativeWorkSeason {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.Episode,
        SchemaOrg.Domain.Episodes,
        SchemaOrg.Domain.NumberOfEpisodes,
        SchemaOrg.Domain.PartOfSeries,
        SchemaOrg.Domain.ProductionCompany,
        SchemaOrg.Domain.StartDate,
        SchemaOrg.Domain.Trailer
    {}
}

extension SchemaOrg.CreativeWorkSeason.`Protocol` {

    public var seasonNumber: SchemaOrg.Range.SeasonNumber? {
        get { self[first: "seasonNumber"] }
        set { self[first: "seasonNumber"] = newValue }
    }
}
