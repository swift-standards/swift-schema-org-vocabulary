extension SchemaOrg.Key where V == SchemaOrg.MonetaryAmount {

    public static var accountMinimumInflow: Self {
        Self("accountMinimumInflow")
    }

    public static var accountOverdraftLimit: Self {
        Self("accountOverdraftLimit")
    }

    public static var customerRemorseReturnShippingFeesAmount: Self {
        Self("customerRemorseReturnShippingFeesAmount")
    }

    public static var earlyPrepaymentPenalty: Self {
        Self("earlyPrepaymentPenalty")
    }

    public static var floorLimit: Self {
        Self("floorLimit")
    }

    public static var itemDefectReturnShippingFeesAmount: Self {
        Self("itemDefectReturnShippingFeesAmount")
    }

    public static var loanMortgageMandateAmount: Self {
        Self("loanMortgageMandateAmount")
    }

    public static var loanPaymentAmount: Self {
        Self("loanPaymentAmount")
    }

    public static var orderValue: Self {
        Self("orderValue")
    }

    public static var purchasePriceLimit: Self {
        Self("purchasePriceLimit")
    }

    public static var returnShippingFeesAmount: Self {
        Self("returnShippingFeesAmount")
    }
}
