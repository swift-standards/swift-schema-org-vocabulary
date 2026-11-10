extension SchemaOrg.DefinedTermSet {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.About,
        SchemaOrg.Domain.HasDefinedTerm
    {}
}
