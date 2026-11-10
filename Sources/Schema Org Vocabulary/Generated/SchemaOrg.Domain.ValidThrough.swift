extension SchemaOrg.Domain {

    public protocol ValidThrough: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ValidThrough {

    public var validThrough: SchemaOrg.Range.ValidThrough? {
        get { self[first: "validThrough"] }
        set { self[first: "validThrough"] = newValue }
    }
}
