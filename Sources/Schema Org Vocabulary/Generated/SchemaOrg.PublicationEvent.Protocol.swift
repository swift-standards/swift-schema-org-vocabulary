extension SchemaOrg.PublicationEvent {

    public protocol `Protocol`: SchemaOrg.Event.`Protocol` {}
}

extension SchemaOrg.PublicationEvent.`Protocol` {

    public var free: Swift.Bool? {
        get { self[first: "free"] }
        set { self[first: "free"] = newValue }
    }

    public var publishedBy: SchemaOrg.Range.PublishedBy? {
        get { self[first: "publishedBy"] }
        set { self[first: "publishedBy"] = newValue }
    }

    public var publishedOn: SchemaOrg.BroadcastService? {
        get { self[first: "publishedOn"] }
        set { self[first: "publishedOn"] = newValue }
    }
}
