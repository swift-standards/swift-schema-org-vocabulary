extension SchemaOrg.PaymentChargeSpecification {

    public protocol `Protocol`:
        SchemaOrg.PriceSpecification.`Protocol`,
        SchemaOrg.Domain.AppliesToDeliveryMethod
    {}
}

extension SchemaOrg.PaymentChargeSpecification.`Protocol` {

    public var appliesToPaymentMethod: SchemaOrg.PaymentMethod? {
        get { self[first: "appliesToPaymentMethod"] }
        set { self[first: "appliesToPaymentMethod"] = newValue }
    }
}
