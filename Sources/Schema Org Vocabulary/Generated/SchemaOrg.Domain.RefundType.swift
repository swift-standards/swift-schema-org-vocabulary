extension SchemaOrg.Domain {

    public protocol RefundType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RefundType {

    public var refundType: SchemaOrg.RefundTypeEnumeration? {
        get { self[first: "refundType"] }
        set { self[first: "refundType"] = newValue }
    }
}
