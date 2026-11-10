extension SchemaOrg.Domain {

    public protocol Directors: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Directors {

    public var directors: SchemaOrg.Person? {
        get { self[first: "directors"] }
        set { self[first: "directors"] = newValue }
    }
}
