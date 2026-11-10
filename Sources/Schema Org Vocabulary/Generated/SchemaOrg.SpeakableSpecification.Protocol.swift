extension SchemaOrg.SpeakableSpecification {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.CssSelector,
        SchemaOrg.Domain.Xpath
    {}
}
