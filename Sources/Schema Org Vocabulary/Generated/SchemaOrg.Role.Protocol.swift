extension SchemaOrg.Role {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.StartDate
    {}
}

extension SchemaOrg.Role.`Protocol` {

    public var namedPosition: SchemaOrg.Range.NamedPosition? {
        get { self[first: "namedPosition"] }
        set { self[first: "namedPosition"] = newValue }
    }

    public var roleName: SchemaOrg.Range.RoleName? {
        get { self[first: "roleName"] }
        set { self[first: "roleName"] = newValue }
    }
}
