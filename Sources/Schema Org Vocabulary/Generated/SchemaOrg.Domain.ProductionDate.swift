extension SchemaOrg.Domain {

    public protocol ProductionDate: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ProductionDate {

    public var productionDate: ISO_8601.CalendarDate? {
        get { self[first: "productionDate"] }
        set { self[first: "productionDate"] = newValue }
    }
}
