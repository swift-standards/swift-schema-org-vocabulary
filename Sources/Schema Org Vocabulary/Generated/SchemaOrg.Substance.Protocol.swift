extension SchemaOrg.Substance {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.ActiveIngredient,
        SchemaOrg.Domain.MaximumIntake
    {}
}
