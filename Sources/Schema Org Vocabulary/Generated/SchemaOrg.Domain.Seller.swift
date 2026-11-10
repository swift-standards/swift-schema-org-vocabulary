extension SchemaOrg.Domain {

    public protocol Seller: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Seller {

    public var seller: SchemaOrg.Range.Seller? {
        get { self[first: "seller"] }
        set { self[first: "seller"] = newValue }
    }
}
