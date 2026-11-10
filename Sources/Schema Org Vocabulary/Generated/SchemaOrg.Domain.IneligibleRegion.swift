extension SchemaOrg.Domain {

    public protocol IneligibleRegion: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IneligibleRegion {

    public var ineligibleRegion: SchemaOrg.Range.IneligibleRegion? {
        get { self[first: "ineligibleRegion"] }
        set { self[first: "ineligibleRegion"] = newValue }
    }
}
