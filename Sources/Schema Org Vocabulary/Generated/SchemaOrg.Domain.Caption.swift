extension SchemaOrg.Domain {

    public protocol Caption: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Caption {

    public var caption: SchemaOrg.Range.Caption? {
        get { self[first: "caption"] }
        set { self[first: "caption"] = newValue }
    }
}
