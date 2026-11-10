extension SchemaOrg.QuantitativeValue {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.AdditionalProperty,
        SchemaOrg.Domain.MaxValue,
        SchemaOrg.Domain.MinValue,
        SchemaOrg.Domain.UnitCode,
        SchemaOrg.Domain.UnitText,
        SchemaOrg.Domain.Value,
        SchemaOrg.Domain.ValueReference
    {}
}
