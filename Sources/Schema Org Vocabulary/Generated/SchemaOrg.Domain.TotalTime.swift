extension SchemaOrg.Domain {

    public protocol TotalTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TotalTime {

    public var totalTime: ISO_8601.Duration? {
        get { self[first: "totalTime"] }
        set { self[first: "totalTime"] = newValue }
    }
}
