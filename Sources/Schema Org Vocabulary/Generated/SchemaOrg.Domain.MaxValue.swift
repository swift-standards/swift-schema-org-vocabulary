extension SchemaOrg.Domain {

    public protocol MaxValue: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MaxValue {

    public var maxValue: Swift.Double? {
        get { self[first: "maxValue"] }
        set { self[first: "maxValue"] = newValue }
    }
}
