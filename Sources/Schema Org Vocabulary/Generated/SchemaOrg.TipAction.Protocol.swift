extension SchemaOrg.TipAction {

    public protocol `Protocol`:
        SchemaOrg.TradeAction.`Protocol`,
        SchemaOrg.Domain.Recipient
    {}
}
