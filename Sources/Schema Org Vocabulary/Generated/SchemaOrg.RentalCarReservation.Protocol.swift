extension SchemaOrg.RentalCarReservation {

    public protocol `Protocol`:
        SchemaOrg.Reservation.`Protocol`,
        SchemaOrg.Domain.PickupLocation,
        SchemaOrg.Domain.PickupTime
    {}
}

extension SchemaOrg.RentalCarReservation.`Protocol` {

    public var dropoffLocation: SchemaOrg.Place? {
        get { self[first: "dropoffLocation"] }
        set { self[first: "dropoffLocation"] = newValue }
    }

    public var dropoffTime: ISO_8601.DateTime? {
        get { self[first: "dropoffTime"] }
        set { self[first: "dropoffTime"] = newValue }
    }
}
