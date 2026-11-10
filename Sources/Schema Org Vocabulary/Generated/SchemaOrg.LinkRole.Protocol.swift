extension SchemaOrg.LinkRole {

    public protocol `Protocol`:
        SchemaOrg.Role.`Protocol`,
        SchemaOrg.Domain.InLanguage
    {}
}

extension SchemaOrg.LinkRole.`Protocol` {

    public var linkRelationship: Swift.String? {
        get { self[first: "linkRelationship"] }
        set { self[first: "linkRelationship"] = newValue }
    }
}
