extension SchemaOrg.Domain {

    public protocol Episodes: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Episodes {

    public var episodes: SchemaOrg.Episode? {
        get { self[first: "episodes"] }
        set { self[first: "episodes"] = newValue }
    }
}
