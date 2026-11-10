extension SchemaOrg.Domain {

    public protocol EligibleDuration: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EligibleDuration {

    public var eligibleDuration: SchemaOrg.QuantitativeValue? {
        get { self[first: "eligibleDuration"] }
        set { self[first: "eligibleDuration"] = newValue }
    }
}
