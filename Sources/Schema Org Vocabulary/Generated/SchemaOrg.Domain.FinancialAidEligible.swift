extension SchemaOrg.Domain {

    public protocol FinancialAidEligible: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FinancialAidEligible {

    public var financialAidEligible: SchemaOrg.Range.FinancialAidEligible? {
        get { self[first: "financialAidEligible"] }
        set { self[first: "financialAidEligible"] = newValue }
    }
}
