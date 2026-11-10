extension SchemaOrg.Domain {

    public protocol MaximumAttendeeCapacity: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MaximumAttendeeCapacity {

    public var maximumAttendeeCapacity: Swift.Int? {
        get { self[first: "maximumAttendeeCapacity"] }
        set { self[first: "maximumAttendeeCapacity"] = newValue }
    }
}
