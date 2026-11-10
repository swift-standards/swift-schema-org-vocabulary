extension SchemaOrg.Domain {

    public protocol AvailabilityEnds: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AvailabilityEnds {

    public var availabilityEnds: SchemaOrg.Range.AvailabilityEnds? {
        get { self[first: "availabilityEnds"] }
        set { self[first: "availabilityEnds"] = newValue }
    }
}
