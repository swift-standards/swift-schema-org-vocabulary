extension SchemaOrg.Domain {

    public protocol Colorist: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Colorist {

    public var colorist: SchemaOrg.Person? {
        get { self[first: "colorist"] }
        set { self[first: "colorist"] = newValue }
    }
}
