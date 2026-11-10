extension SchemaOrg.ComicStory {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Artist,
        SchemaOrg.Domain.Colorist,
        SchemaOrg.Domain.Inker,
        SchemaOrg.Domain.Letterer,
        SchemaOrg.Domain.Penciler
    {}
}
