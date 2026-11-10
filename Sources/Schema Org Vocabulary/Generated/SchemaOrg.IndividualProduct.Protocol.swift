extension SchemaOrg.IndividualProduct {

    public protocol `Protocol`:
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Domain.SerialNumber
    {}
}
