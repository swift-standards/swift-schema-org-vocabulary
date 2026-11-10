extension SchemaOrg.PaymentMethod {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.PaymentMethod.`Protocol` {

    public var paymentMethodType: SchemaOrg.PaymentMethodType? {
        get { self[first: "paymentMethodType"] }
        set { self[first: "paymentMethodType"] = newValue }
    }
}
