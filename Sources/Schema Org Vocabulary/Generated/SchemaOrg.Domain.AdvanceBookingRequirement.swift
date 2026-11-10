extension SchemaOrg.Domain {

    public protocol AdvanceBookingRequirement: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AdvanceBookingRequirement {

    public var advanceBookingRequirement: SchemaOrg.QuantitativeValue? {
        get { self[first: "advanceBookingRequirement"] }
        set { self[first: "advanceBookingRequirement"] = newValue }
    }
}
