extension SchemaOrg.Domain {

    public protocol NumberOfAvailableAccommodationUnits: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfAvailableAccommodationUnits {

    public var numberOfAvailableAccommodationUnits: SchemaOrg.QuantitativeValue? {
        get { self[first: "numberOfAvailableAccommodationUnits"] }
        set { self[first: "numberOfAvailableAccommodationUnits"] = newValue }
    }
}
