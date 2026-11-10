extension SchemaOrg.ProductCollection {

    public protocol `Protocol`:
        SchemaOrg.Collection.`Protocol`,
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Domain.IncludesObject
    {}
}
