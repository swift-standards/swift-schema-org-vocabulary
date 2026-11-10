extension SchemaOrg.ProductModel {

    public protocol `Protocol`:
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Domain.IsVariantOf
    {}
}

extension SchemaOrg.ProductModel.`Protocol` {

    public var predecessorOf: SchemaOrg.ProductModel? {
        get { self[first: "predecessorOf"] }
        set { self[first: "predecessorOf"] = newValue }
    }

    public var successorOf: SchemaOrg.ProductModel? {
        get { self[first: "successorOf"] }
        set { self[first: "successorOf"] = newValue }
    }
}
