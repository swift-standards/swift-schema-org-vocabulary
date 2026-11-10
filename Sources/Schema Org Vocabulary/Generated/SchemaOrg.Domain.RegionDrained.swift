extension SchemaOrg.Domain {

    public protocol RegionDrained: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RegionDrained {

    public var regionDrained: SchemaOrg.Range.RegionDrained? {
        get { self[first: "regionDrained"] }
        set { self[first: "regionDrained"] = newValue }
    }
}
