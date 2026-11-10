extension SchemaOrg.Domain {

    public protocol PaymentDueDate: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PaymentDueDate {

    public var paymentDueDate: SchemaOrg.Range.PaymentDueDate? {
        get { self[first: "paymentDueDate"] }
        set { self[first: "paymentDueDate"] = newValue }
    }
}
