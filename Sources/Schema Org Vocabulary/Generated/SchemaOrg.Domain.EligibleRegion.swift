extension SchemaOrg.Domain {

    public protocol EligibleRegion: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EligibleRegion {

    public var eligibleRegion: SchemaOrg.Range.EligibleRegion? {
        get { self[first: "eligibleRegion"] }
        set { self[first: "eligibleRegion"] = newValue }
    }
}
