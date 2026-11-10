extension SchemaOrg.CategoryCode {

    public protocol `Protocol`:
        SchemaOrg.DefinedTerm.`Protocol`,
        SchemaOrg.Domain.CodeValue
    {}
}

extension SchemaOrg.CategoryCode.`Protocol` {

    public var inCodeSet: SchemaOrg.Range.InCodeSet? {
        get { self[first: "inCodeSet"] }
        set { self[first: "inCodeSet"] = newValue }
    }
}
