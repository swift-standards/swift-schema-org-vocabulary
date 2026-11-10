extension SchemaOrg.TravelAction {

    public protocol `Protocol`:
        SchemaOrg.MoveAction.`Protocol`,
        SchemaOrg.Domain.Distance
    {}
}
