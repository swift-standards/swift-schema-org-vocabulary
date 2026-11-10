extension SchemaOrg.AudioObject {

    public protocol `Protocol`:
        SchemaOrg.MediaObject.`Protocol`,
        SchemaOrg.Domain.Caption,
        SchemaOrg.Domain.EmbeddedTextCaption,
        SchemaOrg.Domain.Transcript
    {}
}
