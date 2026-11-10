extension SchemaOrg.Domain {

    public protocol PaymentMethodId: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PaymentMethodId {

    public var paymentMethodId: Swift.String? {
        get { self[first: "paymentMethodId"] }
        set { self[first: "paymentMethodId"] = newValue }
    }
}
