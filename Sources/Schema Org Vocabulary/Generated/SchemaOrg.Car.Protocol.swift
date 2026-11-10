extension SchemaOrg.Car {

    public protocol `Protocol`:
        SchemaOrg.Vehicle.`Protocol`,
        SchemaOrg.Domain.AcrissCode,
        SchemaOrg.Domain.RoofLoad
    {}
}
