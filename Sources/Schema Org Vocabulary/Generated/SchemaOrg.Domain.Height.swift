extension SchemaOrg.Domain {

    public protocol Height: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Height {

    public var height: SchemaOrg.Range.Height? {
        get { self[first: "height"] }
        set { self[first: "height"] = newValue }
    }
}
