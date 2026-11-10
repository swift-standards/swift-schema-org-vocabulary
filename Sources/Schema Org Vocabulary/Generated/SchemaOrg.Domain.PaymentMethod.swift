extension SchemaOrg.Domain {

    public protocol PaymentMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PaymentMethod {

    public var paymentMethod: SchemaOrg.Range.PaymentMethod? {
        get { self[first: "paymentMethod"] }
        set { self[first: "paymentMethod"] = newValue }
    }
}
