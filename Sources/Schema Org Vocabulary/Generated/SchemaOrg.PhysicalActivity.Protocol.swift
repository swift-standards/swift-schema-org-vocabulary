extension SchemaOrg.PhysicalActivity {

    public protocol `Protocol`:
        SchemaOrg.LifestyleModification.`Protocol`,
        SchemaOrg.Domain.AssociatedAnatomy,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.Epidemiology,
        SchemaOrg.Domain.Pathophysiology
    {}
}
