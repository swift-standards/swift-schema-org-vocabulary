extension SchemaOrg.Domain {

    public protocol Occupancy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Occupancy {

    public var occupancy: SchemaOrg.QuantitativeValue? {
        get { self[first: "occupancy"] }
        set { self[first: "occupancy"] = newValue }
    }
}
