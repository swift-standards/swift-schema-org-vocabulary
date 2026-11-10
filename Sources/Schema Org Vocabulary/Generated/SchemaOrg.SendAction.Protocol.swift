extension SchemaOrg.SendAction {

    public protocol `Protocol`:
        SchemaOrg.TransferAction.`Protocol`,
        SchemaOrg.Domain.DeliveryMethod,
        SchemaOrg.Domain.Recipient
    {}
}
