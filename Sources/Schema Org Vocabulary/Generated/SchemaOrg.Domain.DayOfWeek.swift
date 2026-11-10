extension SchemaOrg.Domain {

    public protocol DayOfWeek: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DayOfWeek {

    public var dayOfWeek: SchemaOrg.DayOfWeek? {
        get { self[first: "dayOfWeek"] }
        set { self[first: "dayOfWeek"] = newValue }
    }
}
