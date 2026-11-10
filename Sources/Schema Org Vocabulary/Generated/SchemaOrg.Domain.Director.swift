extension SchemaOrg.Domain {

    public protocol Director: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Director {

    public var director: SchemaOrg.Person? {
        get { self[first: "director"] }
        set { self[first: "director"] = newValue }
    }
}
