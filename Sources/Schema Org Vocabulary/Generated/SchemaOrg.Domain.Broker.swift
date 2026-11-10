extension SchemaOrg.Domain {

    public protocol Broker: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Broker {

    public var broker: SchemaOrg.Range.Broker? {
        get { self[first: "broker"] }
        set { self[first: "broker"] = newValue }
    }
}
