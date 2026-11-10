extension SchemaOrg.DrugClass {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.Drug
    {}
}
