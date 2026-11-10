extension SchemaOrg.PlayAction {

    public protocol `Protocol`:
        SchemaOrg.Action.`Protocol`,
        SchemaOrg.Domain.Audience,
        SchemaOrg.Domain.Event
    {}
}
