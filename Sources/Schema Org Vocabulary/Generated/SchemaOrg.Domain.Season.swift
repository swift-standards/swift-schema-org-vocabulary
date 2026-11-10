extension SchemaOrg.Domain {

    public protocol Season: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Season {

    public var season: SchemaOrg.Range.Season? {
        get { self[first: "season"] }
        set { self[first: "season"] = newValue }
    }
}
