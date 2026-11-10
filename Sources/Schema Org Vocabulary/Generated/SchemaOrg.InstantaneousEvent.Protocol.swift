extension SchemaOrg.InstantaneousEvent {

    public protocol `Protocol`: SchemaOrg.StructuredValue.`Protocol` {}
}

extension SchemaOrg.InstantaneousEvent.`Protocol` {

    public var data: SchemaOrg.Thing? {
        get { self[first: "data"] }
        set { self[first: "data"] = newValue }
    }

    public var source: SchemaOrg.Thing? {
        get { self[first: "source"] }
        set { self[first: "source"] = newValue }
    }

    public var timestamp: ISO_8601.DateTime? {
        get { self[first: "timestamp"] }
        set { self[first: "timestamp"] = newValue }
    }
}
