extension SchemaOrg.Domain {

    public protocol Event: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Event {

    public var event: SchemaOrg.Event? {
        get { self[first: "event"] }
        set { self[first: "event"] = newValue }
    }
}
