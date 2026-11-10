extension SchemaOrg.Domain {

    public protocol Width: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Width {

    public var width: SchemaOrg.Range.Width? {
        get { self[first: "width"] }
        set { self[first: "width"] = newValue }
    }
}
