extension SchemaOrg.Domain {

    public protocol MeasuredProperty: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MeasuredProperty {

    public var measuredProperty: SchemaOrg.Property? {
        get { self[first: "measuredProperty"] }
        set { self[first: "measuredProperty"] = newValue }
    }
}
