extension SchemaOrg.Domain {

    public protocol Events: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Events {

    public var events: SchemaOrg.Event? {
        get { self[first: "events"] }
        set { self[first: "events"] = newValue }
    }
}
