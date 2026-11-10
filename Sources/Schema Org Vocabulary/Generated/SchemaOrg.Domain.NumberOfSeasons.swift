extension SchemaOrg.Domain {

    public protocol NumberOfSeasons: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfSeasons {

    public var numberOfSeasons: Swift.Int? {
        get { self[first: "numberOfSeasons"] }
        set { self[first: "numberOfSeasons"] = newValue }
    }
}
