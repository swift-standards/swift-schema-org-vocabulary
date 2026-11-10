extension SchemaOrg.TVClip {

    public protocol `Protocol`:
        SchemaOrg.Clip.`Protocol`,
        SchemaOrg.Domain.PartOfTVSeries
    {}
}
