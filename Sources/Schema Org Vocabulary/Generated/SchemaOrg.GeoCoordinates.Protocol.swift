extension SchemaOrg.GeoCoordinates {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Address,
        SchemaOrg.Domain.AddressCountry,
        SchemaOrg.Domain.Elevation,
        SchemaOrg.Domain.Latitude,
        SchemaOrg.Domain.Longitude,
        SchemaOrg.Domain.PostalCode
    {}
}
