extension SchemaOrg.AuthorizeAction {

    public protocol `Protocol`:
        SchemaOrg.AllocateAction.`Protocol`,
        SchemaOrg.Domain.Recipient
    {}
}
