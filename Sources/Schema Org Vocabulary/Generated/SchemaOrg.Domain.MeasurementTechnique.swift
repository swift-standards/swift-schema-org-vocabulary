extension SchemaOrg.Domain {

    public protocol MeasurementTechnique: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MeasurementTechnique {

    public var measurementTechnique: SchemaOrg.Range.MeasurementTechnique? {
        get { self[first: "measurementTechnique"] }
        set { self[first: "measurementTechnique"] = newValue }
    }
}
