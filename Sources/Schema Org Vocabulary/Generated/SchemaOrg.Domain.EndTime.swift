extension SchemaOrg.Domain {

    public protocol EndTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EndTime {

    public var endTime: SchemaOrg.Range.EndTime? {
        get { self[first: "endTime"] }
        set { self[first: "endTime"] = newValue }
    }
}
