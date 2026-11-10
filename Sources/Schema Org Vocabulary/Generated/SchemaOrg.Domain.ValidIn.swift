extension SchemaOrg.Domain {

    public protocol ValidIn: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ValidIn {

    public var validIn: SchemaOrg.AdministrativeArea? {
        get { self[first: "validIn"] }
        set { self[first: "validIn"] = newValue }
    }
}
