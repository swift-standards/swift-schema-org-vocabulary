extension SchemaOrg.Domain {

    public protocol HoursAvailable: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HoursAvailable {

    public var hoursAvailable: SchemaOrg.OpeningHoursSpecification? {
        get { self[first: "hoursAvailable"] }
        set { self[first: "hoursAvailable"] = newValue }
    }
}
