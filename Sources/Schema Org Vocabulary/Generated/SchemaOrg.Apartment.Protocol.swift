extension SchemaOrg.Apartment {

    public protocol `Protocol`:
        SchemaOrg.Accommodation.`Protocol`,
        SchemaOrg.Domain.NumberOfRooms,
        SchemaOrg.Domain.Occupancy
    {}
}
