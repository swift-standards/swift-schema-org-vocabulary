extension SchemaOrg.ReceiveAction {

    public protocol `Protocol`:
        SchemaOrg.TransferAction.`Protocol`,
        SchemaOrg.Domain.DeliveryMethod,
        SchemaOrg.Domain.Sender
    {}
}
