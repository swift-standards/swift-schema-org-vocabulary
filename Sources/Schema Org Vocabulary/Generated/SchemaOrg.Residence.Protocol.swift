extension SchemaOrg.Residence {

    public protocol `Protocol`:
        SchemaOrg.Place.`Protocol`,
        SchemaOrg.Domain.AccommodationFloorPlan,
        SchemaOrg.Domain.FloorLevel
    {}
}
