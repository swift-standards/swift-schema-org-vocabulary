extension SchemaOrg.Domain {

    public protocol Availability: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Availability {

    public var availability: SchemaOrg.ItemAvailability? {
        get { self[first: "availability"] }
        set { self[first: "availability"] = newValue }
    }
}
