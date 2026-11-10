extension SchemaOrg.LoanOrCredit {

    public protocol `Protocol`:
        SchemaOrg.FinancialProduct.`Protocol`,
        SchemaOrg.Domain.Amount,
        SchemaOrg.Domain.Currency
    {}
}

extension SchemaOrg.LoanOrCredit.`Protocol` {

    public var gracePeriod: ISO_8601.Duration? {
        get { self[first: "gracePeriod"] }
        set { self[first: "gracePeriod"] = newValue }
    }

    public var loanRepaymentForm: SchemaOrg.RepaymentSpecification? {
        get { self[first: "loanRepaymentForm"] }
        set { self[first: "loanRepaymentForm"] = newValue }
    }

    public var loanTerm: SchemaOrg.QuantitativeValue? {
        get { self[first: "loanTerm"] }
        set { self[first: "loanTerm"] = newValue }
    }

    public var loanType: SchemaOrg.Range.LoanType? {
        get { self[first: "loanType"] }
        set { self[first: "loanType"] = newValue }
    }

    public var recourseLoan: Swift.Bool? {
        get { self[first: "recourseLoan"] }
        set { self[first: "recourseLoan"] = newValue }
    }

    public var renegotiableLoan: Swift.Bool? {
        get { self[first: "renegotiableLoan"] }
        set { self[first: "renegotiableLoan"] = newValue }
    }

    public var requiredCollateral: SchemaOrg.Range.RequiredCollateral? {
        get { self[first: "requiredCollateral"] }
        set { self[first: "requiredCollateral"] = newValue }
    }
}
