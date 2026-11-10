extension SchemaOrg.BroadcastChannel {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.BroadcastFrequency,
        SchemaOrg.Domain.Genre
    {}
}

extension SchemaOrg.BroadcastChannel.`Protocol` {

    public var broadcastChannelId: Swift.String? {
        get { self[first: "broadcastChannelId"] }
        set { self[first: "broadcastChannelId"] = newValue }
    }

    public var broadcastServiceTier: Swift.String? {
        get { self[first: "broadcastServiceTier"] }
        set { self[first: "broadcastServiceTier"] = newValue }
    }

    public var inBroadcastLineup: SchemaOrg.CableOrSatelliteService? {
        get { self[first: "inBroadcastLineup"] }
        set { self[first: "inBroadcastLineup"] = newValue }
    }

    public var providesBroadcastService: SchemaOrg.BroadcastService? {
        get { self[first: "providesBroadcastService"] }
        set { self[first: "providesBroadcastService"] = newValue }
    }
}
