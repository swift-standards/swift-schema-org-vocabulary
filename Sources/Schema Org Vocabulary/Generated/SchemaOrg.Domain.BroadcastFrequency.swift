extension SchemaOrg.Domain {

    public protocol BroadcastFrequency: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.BroadcastFrequency {

    public var broadcastFrequency: SchemaOrg.Range.BroadcastFrequency? {
        get { self[first: "broadcastFrequency"] }
        set { self[first: "broadcastFrequency"] = newValue }
    }
}
