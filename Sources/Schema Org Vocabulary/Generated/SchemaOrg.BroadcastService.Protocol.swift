extension SchemaOrg.BroadcastService {

    public protocol `Protocol`:
        SchemaOrg.Service.`Protocol`,
        SchemaOrg.Domain.BroadcastFrequency,
        SchemaOrg.Domain.CallSign,
        SchemaOrg.Domain.InLanguage,
        SchemaOrg.Domain.VideoFormat
    {}
}

extension SchemaOrg.BroadcastService.`Protocol` {

    public var area: SchemaOrg.Place? {
        get { self[first: "area"] }
        set { self[first: "area"] = newValue }
    }

    public var broadcastAffiliateOf: SchemaOrg.Organization? {
        get { self[first: "broadcastAffiliateOf"] }
        set { self[first: "broadcastAffiliateOf"] = newValue }
    }

    public var broadcastDisplayName: Swift.String? {
        get { self[first: "broadcastDisplayName"] }
        set { self[first: "broadcastDisplayName"] = newValue }
    }

    public var broadcastTimezone: Swift.String? {
        get { self[first: "broadcastTimezone"] }
        set { self[first: "broadcastTimezone"] = newValue }
    }

    public var broadcaster: SchemaOrg.Organization? {
        get { self[first: "broadcaster"] }
        set { self[first: "broadcaster"] = newValue }
    }

    public var hasBroadcastChannel: SchemaOrg.BroadcastChannel? {
        get { self[first: "hasBroadcastChannel"] }
        set { self[first: "hasBroadcastChannel"] = newValue }
    }

    public var parentService: SchemaOrg.BroadcastService? {
        get { self[first: "parentService"] }
        set { self[first: "parentService"] = newValue }
    }
}
