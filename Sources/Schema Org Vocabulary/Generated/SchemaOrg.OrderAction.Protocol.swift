extension SchemaOrg.OrderAction {

    public protocol `Protocol`:
        SchemaOrg.TradeAction.`Protocol`,
        SchemaOrg.Domain.DeliveryMethod
    {}
}
