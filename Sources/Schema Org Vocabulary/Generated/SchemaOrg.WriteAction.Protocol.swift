extension SchemaOrg.WriteAction {

    public protocol `Protocol`:
        SchemaOrg.CreateAction.`Protocol`,
        SchemaOrg.Domain.InLanguage,
        SchemaOrg.Domain.Language
    {}
}
