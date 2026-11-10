extension SchemaOrg.Domain {

    public protocol Episode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Episode {

    public var episode: SchemaOrg.Episode? {
        get { self[first: "episode"] }
        set { self[first: "episode"] = newValue }
    }
}
