extension SchemaOrg.PodcastSeries {

    public protocol `Protocol`:
        SchemaOrg.CreativeWorkSeries.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.WebFeed
    {}
}
