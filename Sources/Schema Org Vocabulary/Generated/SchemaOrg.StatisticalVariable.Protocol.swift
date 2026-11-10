extension SchemaOrg.StatisticalVariable {

    public protocol `Protocol`:
        SchemaOrg.ConstraintNode.`Protocol`,
        SchemaOrg.Domain.MeasuredProperty,
        SchemaOrg.Domain.MeasurementDenominator,
        SchemaOrg.Domain.MeasurementMethod,
        SchemaOrg.Domain.MeasurementQualifier,
        SchemaOrg.Domain.MeasurementTechnique,
        SchemaOrg.Domain.PopulationType
    {}
}

extension SchemaOrg.StatisticalVariable.`Protocol` {

    public var statType: SchemaOrg.Range.StatType? {
        get { self[first: "statType"] }
        set { self[first: "statType"] = newValue }
    }
}
