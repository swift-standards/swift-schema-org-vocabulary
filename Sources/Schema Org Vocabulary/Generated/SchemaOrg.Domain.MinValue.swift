extension SchemaOrg.Domain {

    public protocol MinValue: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MinValue {

    public var minValue: Swift.Double? {
        get { self[first: "minValue"] }
        set { self[first: "minValue"] = newValue }
    }
}
