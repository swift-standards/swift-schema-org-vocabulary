extension SchemaOrg.Domain {

    public protocol Alumni: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Alumni {

    public var alumni: SchemaOrg.Person? {
        get { self[first: "alumni"] }
        set { self[first: "alumni"] = newValue }
    }
}
