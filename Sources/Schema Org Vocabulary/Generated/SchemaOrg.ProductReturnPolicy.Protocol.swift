extension SchemaOrg.ProductReturnPolicy {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.ProductReturnPolicy.`Protocol` {

    public var productReturnDays: Swift.Int? {
        get { self[first: "productReturnDays"] }
        set { self[first: "productReturnDays"] = newValue }
    }

    public var productReturnLink: RFC_3986.URI? {
        get { self[first: "productReturnLink"] }
        set { self[first: "productReturnLink"] = newValue }
    }
}
