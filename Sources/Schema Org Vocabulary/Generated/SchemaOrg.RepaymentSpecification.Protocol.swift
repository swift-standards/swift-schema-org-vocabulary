extension SchemaOrg.RepaymentSpecification {

    public protocol `Protocol`: SchemaOrg.StructuredValue.`Protocol` {}
}

extension SchemaOrg.RepaymentSpecification.`Protocol` {

    public var downPayment: SchemaOrg.Range.DownPayment? {
        get { self[first: "downPayment"] }
        set { self[first: "downPayment"] = newValue }
    }

    public var earlyPrepaymentPenalty: SchemaOrg.MonetaryAmount? {
        get { self[first: "earlyPrepaymentPenalty"] }
        set { self[first: "earlyPrepaymentPenalty"] = newValue }
    }

    public var loanPaymentAmount: SchemaOrg.MonetaryAmount? {
        get { self[first: "loanPaymentAmount"] }
        set { self[first: "loanPaymentAmount"] = newValue }
    }

    public var loanPaymentFrequency: Swift.Double? {
        get { self[first: "loanPaymentFrequency"] }
        set { self[first: "loanPaymentFrequency"] = newValue }
    }

    public var numberOfLoanPayments: Swift.Double? {
        get { self[first: "numberOfLoanPayments"] }
        set { self[first: "numberOfLoanPayments"] = newValue }
    }
}
