extension SchemaOrg.PaymentService {

    public protocol `Protocol`:
        SchemaOrg.FinancialProduct.`Protocol`,
        SchemaOrg.PaymentMethod.`Protocol`
    {}
}
