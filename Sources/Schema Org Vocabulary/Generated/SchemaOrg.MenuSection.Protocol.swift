extension SchemaOrg.MenuSection {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.HasMenuItem,
        SchemaOrg.Domain.HasMenuSection
    {}
}
