extension SchemaOrg.HotelRoom {

    public protocol `Protocol`:
        SchemaOrg.Room.`Protocol`,
        SchemaOrg.Domain.Bed,
        SchemaOrg.Domain.Occupancy
    {}
}
