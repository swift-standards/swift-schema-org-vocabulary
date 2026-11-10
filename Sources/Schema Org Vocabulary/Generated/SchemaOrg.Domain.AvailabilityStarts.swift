extension SchemaOrg.Domain {

    public protocol AvailabilityStarts: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AvailabilityStarts {

    public var availabilityStarts: SchemaOrg.Range.AvailabilityStarts? {
        get { self[first: "availabilityStarts"] }
        set { self[first: "availabilityStarts"] = newValue }
    }
}
