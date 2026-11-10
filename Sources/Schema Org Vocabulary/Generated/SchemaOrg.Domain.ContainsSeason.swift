extension SchemaOrg.Domain {

    public protocol ContainsSeason: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ContainsSeason {

    public var containsSeason: SchemaOrg.CreativeWorkSeason? {
        get { self[first: "containsSeason"] }
        set { self[first: "containsSeason"] = newValue }
    }
}
