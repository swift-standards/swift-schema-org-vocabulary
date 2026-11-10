extension SchemaOrg.ReturnAction {

    public protocol `Protocol`:
        SchemaOrg.TransferAction.`Protocol`,
        SchemaOrg.Domain.Recipient
    {}
}
