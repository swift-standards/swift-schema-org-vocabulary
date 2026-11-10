extension SchemaOrg.Domain {

    public protocol Artist: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Artist {

    public var artist: SchemaOrg.Person? {
        get { self[first: "artist"] }
        set { self[first: "artist"] = newValue }
    }
}
