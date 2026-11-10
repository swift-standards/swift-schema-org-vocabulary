extension SchemaOrg.GiveAction {

    public protocol `Protocol`:
        SchemaOrg.TransferAction.`Protocol`,
        SchemaOrg.Domain.Recipient
    {}
}
