extension SchemaOrg.FoodEstablishmentReservation {

    public protocol `Protocol`:
        SchemaOrg.Reservation.`Protocol`,
        SchemaOrg.Domain.EndTime,
        SchemaOrg.Domain.PartySize,
        SchemaOrg.Domain.StartTime
    {}
}
