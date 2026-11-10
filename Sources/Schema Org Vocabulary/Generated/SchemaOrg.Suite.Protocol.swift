extension SchemaOrg.Suite {

    public protocol `Protocol`:
        SchemaOrg.Accommodation.`Protocol`,
        SchemaOrg.Domain.Bed,
        SchemaOrg.Domain.NumberOfRooms,
        SchemaOrg.Domain.Occupancy
    {}
}
