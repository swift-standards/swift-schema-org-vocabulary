extension SchemaOrg.Domain {

    public protocol Owns: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Owns {

    public var owns: SchemaOrg.Thing? {
        get { self[first: "owns"] }
        set { self[first: "owns"] = newValue }
    }
}
