extension SchemaOrg.TrainTrip {

    public protocol `Protocol`: SchemaOrg.Trip.`Protocol` {}
}

extension SchemaOrg.TrainTrip.`Protocol` {

    public var arrivalPlatform: Swift.String? {
        get { self[first: "arrivalPlatform"] }
        set { self[first: "arrivalPlatform"] = newValue }
    }

    public var arrivalStation: SchemaOrg.TrainStation? {
        get { self[first: "arrivalStation"] }
        set { self[first: "arrivalStation"] = newValue }
    }

    public var departurePlatform: Swift.String? {
        get { self[first: "departurePlatform"] }
        set { self[first: "departurePlatform"] = newValue }
    }

    public var departureStation: SchemaOrg.TrainStation? {
        get { self[first: "departureStation"] }
        set { self[first: "departureStation"] = newValue }
    }

    public var trainName: Swift.String? {
        get { self[first: "trainName"] }
        set { self[first: "trainName"] = newValue }
    }

    public var trainNumber: Swift.String? {
        get { self[first: "trainNumber"] }
        set { self[first: "trainNumber"] = newValue }
    }
}
