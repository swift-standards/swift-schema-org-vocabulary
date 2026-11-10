extension SchemaOrg.Domain {

    public protocol HasMenuSection: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasMenuSection {

    public var hasMenuSection: SchemaOrg.MenuSection? {
        get { self[first: "hasMenuSection"] }
        set { self[first: "hasMenuSection"] = newValue }
    }
}
