extension SchemaOrg.Domain {

    public protocol HasMenuItem: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasMenuItem {

    public var hasMenuItem: SchemaOrg.MenuItem? {
        get { self[first: "hasMenuItem"] }
        set { self[first: "hasMenuItem"] = newValue }
    }
}
