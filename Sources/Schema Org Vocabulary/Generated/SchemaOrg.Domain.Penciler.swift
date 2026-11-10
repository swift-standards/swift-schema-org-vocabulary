extension SchemaOrg.Domain {

    public protocol Penciler: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Penciler {

    public var penciler: SchemaOrg.Person? {
        get { self[first: "penciler"] }
        set { self[first: "penciler"] = newValue }
    }
}
