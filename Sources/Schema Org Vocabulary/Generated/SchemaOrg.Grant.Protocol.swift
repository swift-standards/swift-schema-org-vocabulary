extension SchemaOrg.Grant {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Funder,
        SchemaOrg.Domain.Sponsor
    {}
}

extension SchemaOrg.Grant.`Protocol` {

    public var fundedItem: SchemaOrg.Range.FundedItem? {
        get { self[first: "fundedItem"] }
        set { self[first: "fundedItem"] = newValue }
    }
}
