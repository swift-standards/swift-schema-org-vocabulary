extension SchemaOrg.Domain {

    public protocol MeasurementDenominator: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MeasurementDenominator {

    public var measurementDenominator: SchemaOrg.StatisticalVariable? {
        get { self[first: "measurementDenominator"] }
        set { self[first: "measurementDenominator"] = newValue }
    }
}
