extension SchemaOrg.ProgramMembership {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.HostingOrganization,
        SchemaOrg.Domain.Member,
        SchemaOrg.Domain.Members,
        SchemaOrg.Domain.MembershipPointsEarned
    {}
}

extension SchemaOrg.ProgramMembership.`Protocol` {

    public var membershipNumber: Swift.String? {
        get { self[first: "membershipNumber"] }
        set { self[first: "membershipNumber"] = newValue }
    }

    public var program: SchemaOrg.MemberProgram? {
        get { self[first: "program"] }
        set { self[first: "program"] = newValue }
    }

    public var programName: Swift.String? {
        get { self[first: "programName"] }
        set { self[first: "programName"] = newValue }
    }
}
