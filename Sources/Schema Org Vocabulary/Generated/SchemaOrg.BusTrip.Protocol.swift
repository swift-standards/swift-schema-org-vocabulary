extension SchemaOrg.BusTrip {

    public protocol `Protocol`: SchemaOrg.Trip.`Protocol` {}
}

extension SchemaOrg.BusTrip.`Protocol` {

    public var arrivalBusStop: SchemaOrg.Range.ArrivalBusStop? {
        get { self[first: "arrivalBusStop"] }
        set { self[first: "arrivalBusStop"] = newValue }
    }

    public var busName: Swift.String? {
        get { self[first: "busName"] }
        set { self[first: "busName"] = newValue }
    }

    public var busNumber: Swift.String? {
        get { self[first: "busNumber"] }
        set { self[first: "busNumber"] = newValue }
    }

    public var departureBusStop: SchemaOrg.Range.DepartureBusStop? {
        get { self[first: "departureBusStop"] }
        set { self[first: "departureBusStop"] = newValue }
    }
}
