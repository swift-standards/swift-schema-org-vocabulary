extension SchemaOrg.LodgingReservation {

    public protocol `Protocol`:
        SchemaOrg.Reservation.`Protocol`,
        SchemaOrg.Domain.CheckinTime,
        SchemaOrg.Domain.CheckoutTime
    {}
}

extension SchemaOrg.LodgingReservation.`Protocol` {

    public var lodgingUnitDescription: Swift.String? {
        get { self[first: "lodgingUnitDescription"] }
        set { self[first: "lodgingUnitDescription"] = newValue }
    }

    public var lodgingUnitType: SchemaOrg.Range.LodgingUnitType? {
        get { self[first: "lodgingUnitType"] }
        set { self[first: "lodgingUnitType"] = newValue }
    }

    public var numAdults: SchemaOrg.Range.NumAdults? {
        get { self[first: "numAdults"] }
        set { self[first: "numAdults"] = newValue }
    }

    public var numChildren: SchemaOrg.Range.NumChildren? {
        get { self[first: "numChildren"] }
        set { self[first: "numChildren"] = newValue }
    }
}
