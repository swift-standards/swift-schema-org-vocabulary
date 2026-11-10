extension SchemaOrg.Domain {

    public protocol NumberOfEpisodes: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfEpisodes {

    public var numberOfEpisodes: Swift.Int? {
        get { self[first: "numberOfEpisodes"] }
        set { self[first: "numberOfEpisodes"] = newValue }
    }
}
