extension SchemaOrg.Domain {

    public protocol DoesNotShip: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DoesNotShip {

    public var doesNotShip: Swift.Bool? {
        get { self[first: "doesNotShip"] }
        set { self[first: "doesNotShip"] = newValue }
    }
}
