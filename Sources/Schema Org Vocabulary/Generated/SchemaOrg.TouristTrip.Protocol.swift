extension SchemaOrg.TouristTrip {

    public protocol `Protocol`:
        SchemaOrg.Trip.`Protocol`,
        SchemaOrg.Domain.TouristType
    {}
}
