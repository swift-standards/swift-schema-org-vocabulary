extension SchemaOrg.PayAction {

    public protocol `Protocol`:
        SchemaOrg.TradeAction.`Protocol`,
        SchemaOrg.Domain.Recipient
    {}
}
