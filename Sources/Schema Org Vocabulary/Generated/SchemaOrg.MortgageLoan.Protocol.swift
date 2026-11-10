extension SchemaOrg.MortgageLoan {

    public protocol `Protocol`: SchemaOrg.LoanOrCredit.`Protocol` {}
}

extension SchemaOrg.MortgageLoan.`Protocol` {

    public var domiciledMortgage: Swift.Bool? {
        get { self[first: "domiciledMortgage"] }
        set { self[first: "domiciledMortgage"] = newValue }
    }

    public var loanMortgageMandateAmount: SchemaOrg.MonetaryAmount? {
        get { self[first: "loanMortgageMandateAmount"] }
        set { self[first: "loanMortgageMandateAmount"] = newValue }
    }
}
