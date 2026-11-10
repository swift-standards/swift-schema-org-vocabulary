extension SchemaOrg.Trip {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.Provider
    {}
}

extension SchemaOrg.Trip.`Protocol` {

    public var arrivalTime: SchemaOrg.Range.ArrivalTime? {
        get { self[first: "arrivalTime"] }
        set { self[first: "arrivalTime"] = newValue }
    }

    public var departureTime: SchemaOrg.Range.DepartureTime? {
        get { self[first: "departureTime"] }
        set { self[first: "departureTime"] = newValue }
    }

    public var itinerary: SchemaOrg.Range.Itinerary? {
        get { self[first: "itinerary"] }
        set { self[first: "itinerary"] = newValue }
    }

    public var partOfTrip: SchemaOrg.Trip? {
        get { self[first: "partOfTrip"] }
        set { self[first: "partOfTrip"] = newValue }
    }

    public var subTrip: SchemaOrg.Trip? {
        get { self[first: "subTrip"] }
        set { self[first: "subTrip"] = newValue }
    }

    public var tripOrigin: SchemaOrg.Place? {
        get { self[first: "tripOrigin"] }
        set { self[first: "tripOrigin"] = newValue }
    }
}
