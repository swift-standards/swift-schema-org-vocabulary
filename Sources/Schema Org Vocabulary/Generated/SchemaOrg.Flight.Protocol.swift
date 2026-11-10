extension SchemaOrg.Flight {

    public protocol `Protocol`:
        SchemaOrg.Trip.`Protocol`,
        SchemaOrg.Domain.BoardingPolicy,
        SchemaOrg.Domain.Carrier,
        SchemaOrg.Domain.Seller
    {}
}

extension SchemaOrg.Flight.`Protocol` {

    public var aircraft: SchemaOrg.Range.Aircraft? {
        get { self[first: "aircraft"] }
        set { self[first: "aircraft"] = newValue }
    }

    public var arrivalAirport: SchemaOrg.Airport? {
        get { self[first: "arrivalAirport"] }
        set { self[first: "arrivalAirport"] = newValue }
    }

    public var arrivalGate: Swift.String? {
        get { self[first: "arrivalGate"] }
        set { self[first: "arrivalGate"] = newValue }
    }

    public var arrivalTerminal: Swift.String? {
        get { self[first: "arrivalTerminal"] }
        set { self[first: "arrivalTerminal"] = newValue }
    }

    public var departureAirport: SchemaOrg.Airport? {
        get { self[first: "departureAirport"] }
        set { self[first: "departureAirport"] = newValue }
    }

    public var departureGate: Swift.String? {
        get { self[first: "departureGate"] }
        set { self[first: "departureGate"] = newValue }
    }

    public var departureTerminal: Swift.String? {
        get { self[first: "departureTerminal"] }
        set { self[first: "departureTerminal"] = newValue }
    }

    public var estimatedFlightDuration: SchemaOrg.Range.EstimatedFlightDuration? {
        get { self[first: "estimatedFlightDuration"] }
        set { self[first: "estimatedFlightDuration"] = newValue }
    }

    public var flightDistance: SchemaOrg.Range.FlightDistance? {
        get { self[first: "flightDistance"] }
        set { self[first: "flightDistance"] = newValue }
    }

    public var flightNumber: Swift.String? {
        get { self[first: "flightNumber"] }
        set { self[first: "flightNumber"] = newValue }
    }

    public var mealService: Swift.String? {
        get { self[first: "mealService"] }
        set { self[first: "mealService"] = newValue }
    }

    public var webCheckinTime: ISO_8601.DateTime? {
        get { self[first: "webCheckinTime"] }
        set { self[first: "webCheckinTime"] = newValue }
    }
}
