extension SchemaOrg.Domain {

    public protocol Genre: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Genre {

    public var genre: SchemaOrg.Range.Genre? {
        get { self[first: "genre"] }
        set { self[first: "genre"] = newValue }
    }
}
