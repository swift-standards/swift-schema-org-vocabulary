extension SchemaOrg.SeekToAction {

    public protocol `Protocol`:
        SchemaOrg.Action.`Protocol`,
        SchemaOrg.Domain.StartOffset
    {}
}
