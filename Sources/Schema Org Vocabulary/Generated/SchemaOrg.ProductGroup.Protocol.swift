extension SchemaOrg.ProductGroup {

    public protocol `Protocol`: SchemaOrg.Product.`Protocol` {}
}

extension SchemaOrg.ProductGroup.`Protocol` {

    public var hasVariant: SchemaOrg.Product? {
        get { self[first: "hasVariant"] }
        set { self[first: "hasVariant"] = newValue }
    }

    public var productGroupID: Swift.String? {
        get { self[first: "productGroupID"] }
        set { self[first: "productGroupID"] = newValue }
    }

    public var variesBy: SchemaOrg.Range.VariesBy? {
        get { self[first: "variesBy"] }
        set { self[first: "variesBy"] = newValue }
    }
}
