extension SchemaOrg.Seat {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.Seat.`Protocol` {

    public var seatNumber: Swift.String? {
        get { self[first: "seatNumber"] }
        set { self[first: "seatNumber"] = newValue }
    }

    public var seatRow: Swift.String? {
        get { self[first: "seatRow"] }
        set { self[first: "seatRow"] = newValue }
    }

    public var seatSection: Swift.String? {
        get { self[first: "seatSection"] }
        set { self[first: "seatSection"] = newValue }
    }

    public var seatingType: SchemaOrg.Range.SeatingType? {
        get { self[first: "seatingType"] }
        set { self[first: "seatingType"] = newValue }
    }
}
