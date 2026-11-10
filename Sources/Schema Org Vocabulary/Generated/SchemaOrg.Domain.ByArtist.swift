extension SchemaOrg.Domain {

    public protocol ByArtist: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ByArtist {

    public var byArtist: SchemaOrg.Range.ByArtist? {
        get { self[first: "byArtist"] }
        set { self[first: "byArtist"] = newValue }
    }
}
