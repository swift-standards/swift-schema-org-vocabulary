extension SchemaOrg.BankAccount {

    public protocol `Protocol`: SchemaOrg.FinancialProduct.`Protocol` {}
}

extension SchemaOrg.BankAccount.`Protocol` {

    public var accountMinimumInflow: SchemaOrg.MonetaryAmount? {
        get { self[first: "accountMinimumInflow"] }
        set { self[first: "accountMinimumInflow"] = newValue }
    }

    public var accountOverdraftLimit: SchemaOrg.MonetaryAmount? {
        get { self[first: "accountOverdraftLimit"] }
        set { self[first: "accountOverdraftLimit"] = newValue }
    }

    public var bankAccountType: SchemaOrg.Range.BankAccountType? {
        get { self[first: "bankAccountType"] }
        set { self[first: "bankAccountType"] = newValue }
    }
}
