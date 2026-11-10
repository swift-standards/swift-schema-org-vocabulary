extension SchemaOrg.Domain {

    public protocol MeasurementQualifier: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MeasurementQualifier {

    public var measurementQualifier: SchemaOrg.Enumeration? {
        get { self[first: "measurementQualifier"] }
        set { self[first: "measurementQualifier"] = newValue }
    }
}
