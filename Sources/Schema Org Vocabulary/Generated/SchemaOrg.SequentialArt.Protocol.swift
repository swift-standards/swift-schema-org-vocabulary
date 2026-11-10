extension SchemaOrg.SequentialArt {

    public protocol `Protocol`:
        SchemaOrg.Book.`Protocol`,
        SchemaOrg.VisualArtwork.`Protocol`
    {}
}
