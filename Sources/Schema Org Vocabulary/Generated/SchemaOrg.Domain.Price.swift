extension SchemaOrg.Domain {

    public protocol Price: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Price {

    public var price: SchemaOrg.Range.Price? {
        get { self[first: "price"] }
        set { self[first: "price"] = newValue }
    }
}
