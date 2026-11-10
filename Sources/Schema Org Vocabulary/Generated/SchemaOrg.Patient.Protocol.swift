extension SchemaOrg.Patient {

    public protocol `Protocol`:
        SchemaOrg.MedicalAudience.`Protocol`,
        SchemaOrg.Person.`Protocol`,
        SchemaOrg.Domain.Diagnosis,
        SchemaOrg.Domain.Drug,
        SchemaOrg.Domain.HealthCondition
    {}
}
