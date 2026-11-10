extension SchemaOrg.Key where V == SchemaOrg.PaymentMethod {

    public static var appliesToPaymentMethod: Self {
        Self("appliesToPaymentMethod")
    }
}
