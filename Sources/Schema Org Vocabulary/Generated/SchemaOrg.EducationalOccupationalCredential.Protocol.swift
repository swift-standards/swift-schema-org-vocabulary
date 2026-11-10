extension SchemaOrg.EducationalOccupationalCredential {

    public protocol `Protocol`:
        SchemaOrg.Credential.`Protocol`,
        SchemaOrg.Domain.CompetencyRequired,
        SchemaOrg.Domain.EducationalLevel
    {}
}
