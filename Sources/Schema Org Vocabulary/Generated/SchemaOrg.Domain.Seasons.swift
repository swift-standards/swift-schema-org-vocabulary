extension SchemaOrg.Domain {

    public protocol Seasons: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Seasons {

    public var seasons: SchemaOrg.CreativeWorkSeason? {
        get { self[first: "seasons"] }
        set { self[first: "seasons"] = newValue }
    }
}
