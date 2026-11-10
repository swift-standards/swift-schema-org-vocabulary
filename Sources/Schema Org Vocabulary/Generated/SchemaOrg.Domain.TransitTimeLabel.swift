extension SchemaOrg.Domain {

    public protocol TransitTimeLabel: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TransitTimeLabel {

    public var transitTimeLabel: Swift.String? {
        get { self[first: "transitTimeLabel"] }
        set { self[first: "transitTimeLabel"] = newValue }
    }
}
