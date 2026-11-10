extension SchemaOrg.Domain {

    public protocol Sku: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Sku {

    public var sku: Swift.String? {
        get { self[first: "sku"] }
        set { self[first: "sku"] = newValue }
    }
}
