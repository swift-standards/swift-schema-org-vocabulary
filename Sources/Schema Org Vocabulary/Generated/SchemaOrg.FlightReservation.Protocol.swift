extension SchemaOrg.FlightReservation {

    public protocol `Protocol`: SchemaOrg.Reservation.`Protocol` {}
}

extension SchemaOrg.FlightReservation.`Protocol` {

    public var boardingGroup: Swift.String? {
        get { self[first: "boardingGroup"] }
        set { self[first: "boardingGroup"] = newValue }
    }

    public var passengerPriorityStatus: SchemaOrg.Range.PassengerPriorityStatus? {
        get { self[first: "passengerPriorityStatus"] }
        set { self[first: "passengerPriorityStatus"] = newValue }
    }

    public var passengerSequenceNumber: Swift.String? {
        get { self[first: "passengerSequenceNumber"] }
        set { self[first: "passengerSequenceNumber"] = newValue }
    }

    public var securityScreening: Swift.String? {
        get { self[first: "securityScreening"] }
        set { self[first: "securityScreening"] = newValue }
    }
}
