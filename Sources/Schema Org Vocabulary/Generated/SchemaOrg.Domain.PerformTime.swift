extension SchemaOrg.Domain {

    public protocol PerformTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PerformTime {

    public var performTime: ISO_8601.Duration? {
        get { self[first: "performTime"] }
        set { self[first: "performTime"] = newValue }
    }
}
