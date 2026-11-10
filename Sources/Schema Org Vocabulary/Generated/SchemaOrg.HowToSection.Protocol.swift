extension SchemaOrg.HowToSection {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.ItemList.`Protocol`,
        SchemaOrg.ListItem.`Protocol`,
        SchemaOrg.Domain.Steps
    {}
}
