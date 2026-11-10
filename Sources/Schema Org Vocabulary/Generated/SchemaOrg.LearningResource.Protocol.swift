extension SchemaOrg.LearningResource {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Assesses,
        SchemaOrg.Domain.CompetencyRequired,
        SchemaOrg.Domain.EducationalAlignment,
        SchemaOrg.Domain.EducationalLevel,
        SchemaOrg.Domain.EducationalUse,
        SchemaOrg.Domain.LearningResourceType,
        SchemaOrg.Domain.Teaches
    {}
}
