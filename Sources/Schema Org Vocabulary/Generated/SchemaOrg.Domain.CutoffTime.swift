extension SchemaOrg.Domain {

    public protocol CutoffTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CutoffTime {

    public var cutoffTime: ISO_8601.Time? {
        get { self[first: "cutoffTime"] }
        set { self[first: "cutoffTime"] = newValue }
    }
}
