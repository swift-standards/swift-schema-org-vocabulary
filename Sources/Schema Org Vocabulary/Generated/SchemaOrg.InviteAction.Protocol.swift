extension SchemaOrg.InviteAction {

    public protocol `Protocol`:
        SchemaOrg.CommunicateAction.`Protocol`,
        SchemaOrg.Domain.Event
    {}
}
