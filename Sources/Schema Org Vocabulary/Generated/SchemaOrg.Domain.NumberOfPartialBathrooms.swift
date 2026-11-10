extension SchemaOrg.Domain {

    public protocol NumberOfPartialBathrooms: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfPartialBathrooms {

    public var numberOfPartialBathrooms: Swift.Double? {
        get { self[first: "numberOfPartialBathrooms"] }
        set { self[first: "numberOfPartialBathrooms"] = newValue }
    }
}
