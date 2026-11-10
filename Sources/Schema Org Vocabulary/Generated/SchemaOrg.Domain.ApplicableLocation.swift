extension SchemaOrg.Domain {

    public protocol ApplicableLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ApplicableLocation {

    public var applicableLocation: SchemaOrg.AdministrativeArea? {
        get { self[first: "applicableLocation"] }
        set { self[first: "applicableLocation"] = newValue }
    }
}
