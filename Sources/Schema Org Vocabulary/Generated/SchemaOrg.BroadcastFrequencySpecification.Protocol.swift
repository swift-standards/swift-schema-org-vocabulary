extension SchemaOrg.BroadcastFrequencySpecification {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.BroadcastFrequencySpecification.`Protocol` {

    public var broadcastFrequencyValue: SchemaOrg.Range.BroadcastFrequencyValue? {
        get { self[first: "broadcastFrequencyValue"] }
        set { self[first: "broadcastFrequencyValue"] = newValue }
    }

    public var broadcastSignalModulation: SchemaOrg.Range.BroadcastSignalModulation? {
        get { self[first: "broadcastSignalModulation"] }
        set { self[first: "broadcastSignalModulation"] = newValue }
    }

    public var broadcastSubChannel: Swift.String? {
        get { self[first: "broadcastSubChannel"] }
        set { self[first: "broadcastSubChannel"] = newValue }
    }
}
