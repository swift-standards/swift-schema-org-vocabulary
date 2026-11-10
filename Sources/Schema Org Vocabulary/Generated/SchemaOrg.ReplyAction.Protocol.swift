extension SchemaOrg.ReplyAction {

    public protocol `Protocol`:
        SchemaOrg.CommunicateAction.`Protocol`,
        SchemaOrg.Domain.ResultComment
    {}
}
