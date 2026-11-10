extension SchemaOrg.BoatTrip {

    public protocol `Protocol`: SchemaOrg.Trip.`Protocol` {}
}

extension SchemaOrg.BoatTrip.`Protocol` {

    public var arrivalBoatTerminal: SchemaOrg.BoatTerminal? {
        get { self[first: "arrivalBoatTerminal"] }
        set { self[first: "arrivalBoatTerminal"] = newValue }
    }

    public var departureBoatTerminal: SchemaOrg.BoatTerminal? {
        get { self[first: "departureBoatTerminal"] }
        set { self[first: "departureBoatTerminal"] = newValue }
    }
}
