extension SchemaOrg.Domain {

    public protocol Brand: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Brand {

    public var brand: SchemaOrg.Range.Brand? {
        get { self[first: "brand"] }
        set { self[first: "brand"] = newValue }
    }
}
