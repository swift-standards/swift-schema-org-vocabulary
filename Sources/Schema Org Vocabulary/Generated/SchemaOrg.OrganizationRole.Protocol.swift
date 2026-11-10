extension SchemaOrg.OrganizationRole {

    public protocol `Protocol`: SchemaOrg.Role.`Protocol` {}
}

extension SchemaOrg.OrganizationRole.`Protocol` {

    public var numberedPosition: Swift.Double? {
        get { self[first: "numberedPosition"] }
        set { self[first: "numberedPosition"] = newValue }
    }
}
