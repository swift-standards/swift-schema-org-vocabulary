extension SchemaOrg.Clip {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.PartOfSeason,
        SchemaOrg.Domain.PartOfSeries,
        SchemaOrg.Domain.StartOffset
    {}
}

extension SchemaOrg.Clip.`Protocol` {

    public var clipNumber: SchemaOrg.Range.ClipNumber? {
        get { self[first: "clipNumber"] }
        set { self[first: "clipNumber"] = newValue }
    }

    public var endOffset: SchemaOrg.Range.EndOffset? {
        get { self[first: "endOffset"] }
        set { self[first: "endOffset"] = newValue }
    }

    public var partOfEpisode: SchemaOrg.Episode? {
        get { self[first: "partOfEpisode"] }
        set { self[first: "partOfEpisode"] = newValue }
    }
}
