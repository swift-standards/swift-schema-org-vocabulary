extension SchemaOrg.Domain {

    public protocol Size: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Size {

    public var size: SchemaOrg.Range.Size? {
        get { self[first: "size"] }
        set { self[first: "size"] = newValue }
    }
}
