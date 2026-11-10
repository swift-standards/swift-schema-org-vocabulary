extension SchemaOrg.TradeAction {

    public protocol `Protocol`:
        SchemaOrg.Action.`Protocol`,
        SchemaOrg.Domain.Price,
        SchemaOrg.Domain.PriceCurrency,
        SchemaOrg.Domain.PriceSpecification
    {}
}
