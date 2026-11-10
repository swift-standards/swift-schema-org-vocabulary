extension SchemaOrg.Episode {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.Duration,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.PartOfSeason,
        SchemaOrg.Domain.PartOfSeries,
        SchemaOrg.Domain.ProductionCompany,
        SchemaOrg.Domain.Trailer
    {}
}

extension SchemaOrg.Episode.`Protocol` {

    public var episodeNumber: SchemaOrg.Range.EpisodeNumber? {
        get { self[first: "episodeNumber"] }
        set { self[first: "episodeNumber"] = newValue }
    }
}
