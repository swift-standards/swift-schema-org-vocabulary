extension SchemaOrg.Domain {

    public protocol Trailer: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Trailer {

    public var trailer: SchemaOrg.VideoObject? {
        get { self[first: "trailer"] }
        set { self[first: "trailer"] = newValue }
    }
}
