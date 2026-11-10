extension SchemaOrg.Domain {

    public protocol Item: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Item {

    public var item: SchemaOrg.Thing? {
        get { self[first: "item"] }
        set { self[first: "item"] = newValue }
    }
}
