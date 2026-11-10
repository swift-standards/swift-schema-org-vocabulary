extension SchemaOrg.Domain {

    public protocol HasAdultConsideration: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasAdultConsideration {

    public var hasAdultConsideration: SchemaOrg.AdultOrientedEnumeration? {
        get { self[first: "hasAdultConsideration"] }
        set { self[first: "hasAdultConsideration"] = newValue }
    }
}
