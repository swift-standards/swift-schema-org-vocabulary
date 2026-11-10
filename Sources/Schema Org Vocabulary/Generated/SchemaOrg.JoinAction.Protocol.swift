extension SchemaOrg.JoinAction {

    public protocol `Protocol`:
        SchemaOrg.InteractAction.`Protocol`,
        SchemaOrg.Domain.Event
    {}
}
