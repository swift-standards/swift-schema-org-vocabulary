extension SchemaOrg.InvestmentOrDeposit {

    public protocol `Protocol`:
        SchemaOrg.FinancialProduct.`Protocol`,
        SchemaOrg.Domain.Amount
    {}
}
