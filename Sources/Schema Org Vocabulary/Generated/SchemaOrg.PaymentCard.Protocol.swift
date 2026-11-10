extension SchemaOrg.PaymentCard {

    public protocol `Protocol`:
        SchemaOrg.FinancialProduct.`Protocol`,
        SchemaOrg.PaymentMethod.`Protocol`
    {}
}

extension SchemaOrg.PaymentCard.`Protocol` {

    public var cashBack: SchemaOrg.Range.CashBack? {
        get { self[first: "cashBack"] }
        set { self[first: "cashBack"] = newValue }
    }

    public var contactlessPayment: Swift.Bool? {
        get { self[first: "contactlessPayment"] }
        set { self[first: "contactlessPayment"] = newValue }
    }

    public var floorLimit: SchemaOrg.MonetaryAmount? {
        get { self[first: "floorLimit"] }
        set { self[first: "floorLimit"] = newValue }
    }

    public var monthlyMinimumRepaymentAmount: SchemaOrg.Range.MonthlyMinimumRepaymentAmount? {
        get { self[first: "monthlyMinimumRepaymentAmount"] }
        set { self[first: "monthlyMinimumRepaymentAmount"] = newValue }
    }
}
