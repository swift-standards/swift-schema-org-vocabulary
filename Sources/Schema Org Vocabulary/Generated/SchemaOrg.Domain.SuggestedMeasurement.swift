extension SchemaOrg.Domain {

    public protocol SuggestedMeasurement: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SuggestedMeasurement {

    public var suggestedMeasurement: SchemaOrg.QuantitativeValue? {
        get { self[first: "suggestedMeasurement"] }
        set { self[first: "suggestedMeasurement"] = newValue }
    }
}
