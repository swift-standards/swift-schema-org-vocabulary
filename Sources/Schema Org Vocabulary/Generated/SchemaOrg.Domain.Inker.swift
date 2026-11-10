extension SchemaOrg.Domain {

    public protocol Inker: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Inker {

    public var inker: SchemaOrg.Person? {
        get { self[first: "inker"] }
        set { self[first: "inker"] = newValue }
    }
}
