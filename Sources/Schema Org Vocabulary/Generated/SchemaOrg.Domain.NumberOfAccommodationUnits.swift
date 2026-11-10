extension SchemaOrg.Domain {

    public protocol NumberOfAccommodationUnits: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfAccommodationUnits {

    public var numberOfAccommodationUnits: SchemaOrg.QuantitativeValue? {
        get { self[first: "numberOfAccommodationUnits"] }
        set { self[first: "numberOfAccommodationUnits"] = newValue }
    }
}
