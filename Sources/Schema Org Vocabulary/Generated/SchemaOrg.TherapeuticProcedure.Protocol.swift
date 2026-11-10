extension SchemaOrg.TherapeuticProcedure {

    public protocol `Protocol`:
        SchemaOrg.MedicalProcedure.`Protocol`,
        SchemaOrg.Domain.AdverseOutcome,
        SchemaOrg.Domain.DoseSchedule,
        SchemaOrg.Domain.Drug
    {}
}
