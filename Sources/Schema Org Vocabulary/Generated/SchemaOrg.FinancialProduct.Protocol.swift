extension SchemaOrg.FinancialProduct {

    public protocol `Protocol`:
        SchemaOrg.Service.`Protocol`,
        SchemaOrg.Domain.FeesAndCommissionsSpecification
    {}
}

extension SchemaOrg.FinancialProduct.`Protocol` {

    public var annualPercentageRate: SchemaOrg.Range.AnnualPercentageRate? {
        get { self[first: "annualPercentageRate"] }
        set { self[first: "annualPercentageRate"] = newValue }
    }

    public var interestRate: SchemaOrg.Range.InterestRate? {
        get { self[first: "interestRate"] }
        set { self[first: "interestRate"] = newValue }
    }
}
