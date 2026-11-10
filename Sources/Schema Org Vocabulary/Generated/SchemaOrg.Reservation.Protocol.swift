extension SchemaOrg.Reservation {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Broker,
        SchemaOrg.Domain.PriceCurrency,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.TotalPrice,
        SchemaOrg.Domain.UnderName
    {}
}

extension SchemaOrg.Reservation.`Protocol` {

    public var bookingAgent: SchemaOrg.Range.BookingAgent? {
        get { self[first: "bookingAgent"] }
        set { self[first: "bookingAgent"] = newValue }
    }

    public var bookingTime: ISO_8601.DateTime? {
        get { self[first: "bookingTime"] }
        set { self[first: "bookingTime"] = newValue }
    }

    public var modifiedTime: ISO_8601.DateTime? {
        get { self[first: "modifiedTime"] }
        set { self[first: "modifiedTime"] = newValue }
    }

    public var programMembershipUsed: SchemaOrg.ProgramMembership? {
        get { self[first: "programMembershipUsed"] }
        set { self[first: "programMembershipUsed"] = newValue }
    }

    public var reservationFor: SchemaOrg.Thing? {
        get { self[first: "reservationFor"] }
        set { self[first: "reservationFor"] = newValue }
    }

    public var reservationId: Swift.String? {
        get { self[first: "reservationId"] }
        set { self[first: "reservationId"] = newValue }
    }

    public var reservationStatus: SchemaOrg.ReservationStatusType? {
        get { self[first: "reservationStatus"] }
        set { self[first: "reservationStatus"] = newValue }
    }

    public var reservedTicket: SchemaOrg.Ticket? {
        get { self[first: "reservedTicket"] }
        set { self[first: "reservedTicket"] = newValue }
    }
}
