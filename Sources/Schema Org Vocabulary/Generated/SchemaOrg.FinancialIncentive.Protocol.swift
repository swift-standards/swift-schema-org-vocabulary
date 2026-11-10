extension SchemaOrg.FinancialIncentive {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AreaServed,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.Publisher,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidThrough
    {}
}

extension SchemaOrg.FinancialIncentive.`Protocol` {

    public var eligibleWithSupplier: SchemaOrg.Organization? {
        get { self[first: "eligibleWithSupplier"] }
        set { self[first: "eligibleWithSupplier"] = newValue }
    }

    public var incentiveAmount: SchemaOrg.Range.IncentiveAmount? {
        get { self[first: "incentiveAmount"] }
        set { self[first: "incentiveAmount"] = newValue }
    }

    public var incentiveStatus: SchemaOrg.IncentiveStatus? {
        get { self[first: "incentiveStatus"] }
        set { self[first: "incentiveStatus"] = newValue }
    }

    public var incentiveType: SchemaOrg.IncentiveType? {
        get { self[first: "incentiveType"] }
        set { self[first: "incentiveType"] = newValue }
    }

    public var incentivizedItem: SchemaOrg.Range.IncentivizedItem? {
        get { self[first: "incentivizedItem"] }
        set { self[first: "incentivizedItem"] = newValue }
    }

    public var incomeLimit: SchemaOrg.Range.IncomeLimit? {
        get { self[first: "incomeLimit"] }
        set { self[first: "incomeLimit"] = newValue }
    }

    public var purchasePriceLimit: SchemaOrg.MonetaryAmount? {
        get { self[first: "purchasePriceLimit"] }
        set { self[first: "purchasePriceLimit"] = newValue }
    }

    public var purchaseType: SchemaOrg.PurchaseType? {
        get { self[first: "purchaseType"] }
        set { self[first: "purchaseType"] = newValue }
    }

    public var qualifiedExpense: SchemaOrg.IncentiveQualifiedExpenseType? {
        get { self[first: "qualifiedExpense"] }
        set { self[first: "qualifiedExpense"] = newValue }
    }
}
