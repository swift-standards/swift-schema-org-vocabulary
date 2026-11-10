extension SchemaOrg.MoveAction {

    public protocol `Protocol`:
        SchemaOrg.Action.`Protocol`,
        SchemaOrg.Domain.FromLocation,
        SchemaOrg.Domain.ToLocation
    {}
}
