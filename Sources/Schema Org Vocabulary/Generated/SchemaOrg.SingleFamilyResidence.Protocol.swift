extension SchemaOrg.SingleFamilyResidence {

    public protocol `Protocol`:
        SchemaOrg.House.`Protocol`,
        SchemaOrg.Domain.NumberOfRooms,
        SchemaOrg.Domain.Occupancy
    {}
}
