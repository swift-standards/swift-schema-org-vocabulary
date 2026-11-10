extension SchemaOrg.DefinedTerm {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.About
    {}
}

extension SchemaOrg.DefinedTerm.`Protocol` {

    public var inDefinedTermSet: SchemaOrg.Range.InDefinedTermSet? {
        get { self[first: "inDefinedTermSet"] }
        set { self[first: "inDefinedTermSet"] = newValue }
    }

    public var termCode: Swift.String? {
        get { self[first: "termCode"] }
        set { self[first: "termCode"] = newValue }
    }
}
