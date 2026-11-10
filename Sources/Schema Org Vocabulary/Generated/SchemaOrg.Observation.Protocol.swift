extension SchemaOrg.Observation {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.QuantitativeValue.`Protocol`,
        SchemaOrg.Domain.MeasuredProperty,
        SchemaOrg.Domain.MeasurementDenominator,
        SchemaOrg.Domain.MeasurementMethod,
        SchemaOrg.Domain.MeasurementQualifier,
        SchemaOrg.Domain.MeasurementTechnique,
        SchemaOrg.Domain.VariableMeasured
    {}
}

extension SchemaOrg.Observation.`Protocol` {

    public var marginOfError: SchemaOrg.QuantitativeValue? {
        get { self[first: "marginOfError"] }
        set { self[first: "marginOfError"] = newValue }
    }

    public var observationAbout: SchemaOrg.Range.ObservationAbout? {
        get { self[first: "observationAbout"] }
        set { self[first: "observationAbout"] = newValue }
    }

    public var observationDate: SchemaOrg.Range.ObservationDate? {
        get { self[first: "observationDate"] }
        set { self[first: "observationDate"] = newValue }
    }

    public var observationPeriod: Swift.String? {
        get { self[first: "observationPeriod"] }
        set { self[first: "observationPeriod"] = newValue }
    }
}
