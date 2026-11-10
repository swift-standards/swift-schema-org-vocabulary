extension SchemaOrg.ExchangeRateSpecification {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Currency
    {}
}

extension SchemaOrg.ExchangeRateSpecification.`Protocol` {

    public var currentExchangeRate: SchemaOrg.UnitPriceSpecification? {
        get { self[first: "currentExchangeRate"] }
        set { self[first: "currentExchangeRate"] = newValue }
    }

    public var exchangeRateSpread: SchemaOrg.Range.ExchangeRateSpread? {
        get { self[first: "exchangeRateSpread"] }
        set { self[first: "exchangeRateSpread"] = newValue }
    }
}
