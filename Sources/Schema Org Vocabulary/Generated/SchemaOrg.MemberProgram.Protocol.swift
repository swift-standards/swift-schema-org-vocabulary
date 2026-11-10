extension SchemaOrg.MemberProgram {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.HostingOrganization
    {}
}

extension SchemaOrg.MemberProgram.`Protocol` {

    public var hasTiers: SchemaOrg.MemberProgramTier? {
        get { self[first: "hasTiers"] }
        set { self[first: "hasTiers"] = newValue }
    }
}
