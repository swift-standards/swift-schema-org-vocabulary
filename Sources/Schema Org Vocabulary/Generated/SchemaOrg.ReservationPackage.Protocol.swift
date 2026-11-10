extension SchemaOrg.ReservationPackage {

    public protocol `Protocol`: SchemaOrg.Reservation.`Protocol` {}
}

extension SchemaOrg.ReservationPackage.`Protocol` {

    public var subReservation: SchemaOrg.Reservation? {
        get { self[first: "subReservation"] }
        set { self[first: "subReservation"] = newValue }
    }
}
