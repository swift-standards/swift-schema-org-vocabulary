extension SchemaOrg.Domain {

    public protocol TotalPrice: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TotalPrice {

    public var totalPrice: SchemaOrg.Range.TotalPrice? {
        get { self[first: "totalPrice"] }
        set { self[first: "totalPrice"] = newValue }
    }
}
