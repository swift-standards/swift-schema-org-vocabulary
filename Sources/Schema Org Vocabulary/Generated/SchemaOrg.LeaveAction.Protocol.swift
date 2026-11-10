extension SchemaOrg.LeaveAction {

    public protocol `Protocol`:
        SchemaOrg.InteractAction.`Protocol`,
        SchemaOrg.Domain.Event
    {}
}
