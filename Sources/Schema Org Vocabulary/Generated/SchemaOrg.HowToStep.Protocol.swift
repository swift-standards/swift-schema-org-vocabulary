extension SchemaOrg.HowToStep {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.ItemList.`Protocol`,
        SchemaOrg.ListItem.`Protocol`
    {}
}
