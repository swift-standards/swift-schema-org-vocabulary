extension SchemaOrg.Domain {

    public protocol Actors: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Actors {

    public var actors: SchemaOrg.Person? {
        get { self[first: "actors"] }
        set { self[first: "actors"] = newValue }
    }
}
