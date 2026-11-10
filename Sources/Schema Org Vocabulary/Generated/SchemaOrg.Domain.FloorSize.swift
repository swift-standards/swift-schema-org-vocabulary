extension SchemaOrg.Domain {

    public protocol FloorSize: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FloorSize {

    public var floorSize: SchemaOrg.QuantitativeValue? {
        get { self[first: "floorSize"] }
        set { self[first: "floorSize"] = newValue }
    }
}
