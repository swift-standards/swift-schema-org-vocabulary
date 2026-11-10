extension SchemaOrg.Domain {

    public protocol Amount: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Amount {

    public var amount: SchemaOrg.Range.Amount? {
        get { self[first: "amount"] }
        set { self[first: "amount"] = newValue }
    }
}
