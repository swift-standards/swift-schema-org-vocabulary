extension SchemaOrg.Class {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.SupersededBy
    {}
}
