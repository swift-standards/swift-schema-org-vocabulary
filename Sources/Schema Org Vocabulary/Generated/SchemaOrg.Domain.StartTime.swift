extension SchemaOrg.Domain {

    public protocol StartTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.StartTime {

    public var startTime: SchemaOrg.Range.StartTime? {
        get { self[first: "startTime"] }
        set { self[first: "startTime"] = newValue }
    }
}
