extension SchemaOrg.PropertyValue {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.MaxValue,
        SchemaOrg.Domain.MeasurementMethod,
        SchemaOrg.Domain.MeasurementTechnique,
        SchemaOrg.Domain.MinValue,
        SchemaOrg.Domain.UnitCode,
        SchemaOrg.Domain.UnitText,
        SchemaOrg.Domain.Value,
        SchemaOrg.Domain.ValueReference
    {}
}

extension SchemaOrg.PropertyValue.`Protocol` {

    public var propertyID: SchemaOrg.Range.PropertyID? {
        get { self[first: "propertyID"] }
        set { self[first: "propertyID"] = newValue }
    }

    public var valueGroup: Swift.String? {
        get { self[first: "valueGroup"] }
        set { self[first: "valueGroup"] = newValue }
    }
}
