extension SchemaOrg.Domain {

    public protocol TransitTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TransitTime {

    public var transitTime: SchemaOrg.Range.TransitTime? {
        get { self[first: "transitTime"] }
        set { self[first: "transitTime"] = newValue }
    }
}
