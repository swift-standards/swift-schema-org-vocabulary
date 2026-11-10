extension SchemaOrg.Domain {

    public protocol PaymentDue: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PaymentDue {

    public var paymentDue: ISO_8601.DateTime? {
        get { self[first: "paymentDue"] }
        set { self[first: "paymentDue"] = newValue }
    }
}
