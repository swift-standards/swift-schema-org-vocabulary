extension SchemaOrg.Menu {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.HasMenuItem,
        SchemaOrg.Domain.HasMenuSection
    {}
}
