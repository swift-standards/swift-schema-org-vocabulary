extension SchemaOrg.SportsTeam {

    public protocol `Protocol`:
        SchemaOrg.SportsOrganization.`Protocol`,
        SchemaOrg.Domain.Gender
    {}
}

extension SchemaOrg.SportsTeam.`Protocol` {

    public var athlete: SchemaOrg.Person? {
        get { self[first: "athlete"] }
        set { self[first: "athlete"] = newValue }
    }

    public var coach: SchemaOrg.Person? {
        get { self[first: "coach"] }
        set { self[first: "coach"] = newValue }
    }
}
