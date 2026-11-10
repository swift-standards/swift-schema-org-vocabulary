extension SchemaOrg.CommunicateAction {

    public protocol `Protocol`:
        SchemaOrg.InteractAction.`Protocol`,
        SchemaOrg.Domain.About,
        SchemaOrg.Domain.InLanguage,
        SchemaOrg.Domain.Language,
        SchemaOrg.Domain.Recipient
    {}
}
