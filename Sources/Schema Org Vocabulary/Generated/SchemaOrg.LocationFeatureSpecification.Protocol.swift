extension SchemaOrg.LocationFeatureSpecification {

    public protocol `Protocol`:
        SchemaOrg.PropertyValue.`Protocol`,
        SchemaOrg.Domain.HoursAvailable,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidThrough
    {}
}
