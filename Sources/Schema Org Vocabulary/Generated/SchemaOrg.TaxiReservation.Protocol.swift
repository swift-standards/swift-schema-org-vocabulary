extension SchemaOrg.TaxiReservation {

    public protocol `Protocol`:
        SchemaOrg.Reservation.`Protocol`,
        SchemaOrg.Domain.PartySize,
        SchemaOrg.Domain.PickupLocation,
        SchemaOrg.Domain.PickupTime
    {}
}
