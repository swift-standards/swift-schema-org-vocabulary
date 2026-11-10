extension SchemaOrg.Domain {

    public protocol NumberOfFullBathrooms: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfFullBathrooms {

    public var numberOfFullBathrooms: Swift.Double? {
        get { self[first: "numberOfFullBathrooms"] }
        set { self[first: "numberOfFullBathrooms"] = newValue }
    }
}
