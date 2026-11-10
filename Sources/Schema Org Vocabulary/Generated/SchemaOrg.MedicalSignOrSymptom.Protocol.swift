extension SchemaOrg.MedicalSignOrSymptom {

    public protocol `Protocol`:
        SchemaOrg.MedicalCondition.`Protocol`,
        SchemaOrg.Domain.PossibleTreatment
    {}
}
