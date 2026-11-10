extension SchemaOrg.Domain {

    public protocol Value: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Value {

    public var value: SchemaOrg.Range.Value? {
        get { self[first: "value"] }
        set { self[first: "value"] = newValue }
    }
}
