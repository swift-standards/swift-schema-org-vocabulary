extension SchemaOrg.Domain {

    public protocol MeasurementMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MeasurementMethod {

    public var measurementMethod: SchemaOrg.Range.MeasurementMethod? {
        get { self[first: "measurementMethod"] }
        set { self[first: "measurementMethod"] = newValue }
    }
}
