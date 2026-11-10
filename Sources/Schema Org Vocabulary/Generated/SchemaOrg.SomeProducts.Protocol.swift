extension SchemaOrg.SomeProducts {

    public protocol `Protocol`:
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Domain.InventoryLevel
    {}
}
