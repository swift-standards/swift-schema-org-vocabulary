extension SchemaOrg.Domain {

    public protocol PartOfSeason: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PartOfSeason {

    public var partOfSeason: SchemaOrg.CreativeWorkSeason? {
        get { self[first: "partOfSeason"] }
        set { self[first: "partOfSeason"] = newValue }
    }
}
