extension SchemaOrg.InformAction {

    public protocol `Protocol`:
        SchemaOrg.CommunicateAction.`Protocol`,
        SchemaOrg.Domain.Event
    {}
}
