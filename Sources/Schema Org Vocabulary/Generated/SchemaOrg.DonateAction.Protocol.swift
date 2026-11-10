extension SchemaOrg.DonateAction {

    public protocol `Protocol`:
        SchemaOrg.TransferAction.`Protocol`,
        SchemaOrg.Domain.Price,
        SchemaOrg.Domain.PriceCurrency,
        SchemaOrg.Domain.PriceSpecification,
        SchemaOrg.Domain.Recipient
    {}
}
