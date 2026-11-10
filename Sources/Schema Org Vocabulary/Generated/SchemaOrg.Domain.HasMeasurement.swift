extension SchemaOrg.Domain {

    public protocol HasMeasurement: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasMeasurement {

    public var hasMeasurement: SchemaOrg.QuantitativeValue? {
        get { self[first: "hasMeasurement"] }
        set { self[first: "hasMeasurement"] = newValue }
    }
}
