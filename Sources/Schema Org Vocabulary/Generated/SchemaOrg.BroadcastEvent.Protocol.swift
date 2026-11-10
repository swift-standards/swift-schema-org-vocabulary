extension SchemaOrg.BroadcastEvent {

    public protocol `Protocol`:
        SchemaOrg.PublicationEvent.`Protocol`,
        SchemaOrg.Domain.SubtitleLanguage,
        SchemaOrg.Domain.VideoFormat
    {}
}

extension SchemaOrg.BroadcastEvent.`Protocol` {

    public var broadcastOfEvent: SchemaOrg.Event? {
        get { self[first: "broadcastOfEvent"] }
        set { self[first: "broadcastOfEvent"] = newValue }
    }

    public var isLiveBroadcast: Swift.Bool? {
        get { self[first: "isLiveBroadcast"] }
        set { self[first: "isLiveBroadcast"] = newValue }
    }
}
