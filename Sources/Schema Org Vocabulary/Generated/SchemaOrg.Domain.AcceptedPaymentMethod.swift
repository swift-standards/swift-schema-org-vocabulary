extension SchemaOrg.Domain {

    public protocol AcceptedPaymentMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AcceptedPaymentMethod {

    public var acceptedPaymentMethod: SchemaOrg.Range.AcceptedPaymentMethod? {
        get { self[first: "acceptedPaymentMethod"] }
        set { self[first: "acceptedPaymentMethod"] = newValue }
    }
}
