extension SchemaOrg.TransferAction {

    public protocol `Protocol`:
        SchemaOrg.Action.`Protocol`,
        SchemaOrg.Domain.FromLocation,
        SchemaOrg.Domain.ToLocation
    {}
}
