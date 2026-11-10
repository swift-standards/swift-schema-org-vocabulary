extension SchemaOrg.Domain {

    public protocol EligibleQuantity: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EligibleQuantity {

    public var eligibleQuantity: SchemaOrg.QuantitativeValue? {
        get { self[first: "eligibleQuantity"] }
        set { self[first: "eligibleQuantity"] = newValue }
    }
}
