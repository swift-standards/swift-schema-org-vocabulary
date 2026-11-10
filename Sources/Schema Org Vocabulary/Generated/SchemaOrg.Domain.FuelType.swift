extension SchemaOrg.Domain {

    public protocol FuelType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FuelType {

    public var fuelType: SchemaOrg.Range.FuelType? {
        get { self[first: "fuelType"] }
        set { self[first: "fuelType"] = newValue }
    }
}
