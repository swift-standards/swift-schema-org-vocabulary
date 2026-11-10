extension SchemaOrg.EducationEvent {

    public protocol `Protocol`:
        SchemaOrg.Event.`Protocol`,
        SchemaOrg.Domain.Assesses,
        SchemaOrg.Domain.EducationalLevel,
        SchemaOrg.Domain.Teaches
    {}
}
