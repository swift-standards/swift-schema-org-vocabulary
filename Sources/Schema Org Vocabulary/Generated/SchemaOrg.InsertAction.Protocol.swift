extension SchemaOrg.InsertAction {

    public protocol `Protocol`:
        SchemaOrg.AddAction.`Protocol`,
        SchemaOrg.Domain.ToLocation
    {}
}
