extension SchemaOrg.Domain {

    public protocol EligibleTransactionVolume: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EligibleTransactionVolume {

    public var eligibleTransactionVolume: SchemaOrg.PriceSpecification? {
        get { self[first: "eligibleTransactionVolume"] }
        set { self[first: "eligibleTransactionVolume"] = newValue }
    }
}
