extension SchemaOrg.Domain {

    public protocol Sport: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Sport {

    public var sport: SchemaOrg.Range.Sport? {
        get { self[first: "sport"] }
        set { self[first: "sport"] = newValue }
    }
}
