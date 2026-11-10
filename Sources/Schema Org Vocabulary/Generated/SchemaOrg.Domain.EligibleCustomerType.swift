extension SchemaOrg.Domain {

    public protocol EligibleCustomerType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EligibleCustomerType {

    public var eligibleCustomerType: SchemaOrg.BusinessEntityType? {
        get { self[first: "eligibleCustomerType"] }
        set { self[first: "eligibleCustomerType"] = newValue }
    }
}
