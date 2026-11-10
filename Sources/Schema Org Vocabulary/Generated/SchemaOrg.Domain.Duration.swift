extension SchemaOrg.Domain {

    public protocol Duration: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Duration {

    public var duration: SchemaOrg.Range.Duration? {
        get { self[first: "duration"] }
        set { self[first: "duration"] = newValue }
    }
}
