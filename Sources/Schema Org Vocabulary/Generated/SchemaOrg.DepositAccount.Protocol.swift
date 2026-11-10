extension SchemaOrg.DepositAccount {

    public protocol `Protocol`:
        SchemaOrg.BankAccount.`Protocol`,
        SchemaOrg.InvestmentOrDeposit.`Protocol`
    {}
}
