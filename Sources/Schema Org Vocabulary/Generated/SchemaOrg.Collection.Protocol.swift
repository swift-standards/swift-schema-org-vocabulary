extension SchemaOrg.Collection {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.Collection.`Protocol` {

    public var collectionSize: Swift.Int? {
        get { self[first: "collectionSize"] }
        set { self[first: "collectionSize"] = newValue }
    }
}
