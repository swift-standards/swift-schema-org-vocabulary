extension SchemaOrg.PhysicalExam {

    public protocol `Protocol`:
        SchemaOrg.MedicalEnumeration.`Protocol`,
        SchemaOrg.MedicalProcedure.`Protocol`
    {}
}
