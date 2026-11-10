extension SchemaOrg.Domain {

    public protocol Epidemiology: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Epidemiology {

    public var epidemiology: Swift.String? {
        get { self[first: "epidemiology"] }
        set { self[first: "epidemiology"] = newValue }
    }
}
