extension SchemaOrg.PalliativeProcedure {

    public protocol `Protocol`:
        SchemaOrg.MedicalProcedure.`Protocol`,
        SchemaOrg.MedicalTherapy.`Protocol`
    {}
}
