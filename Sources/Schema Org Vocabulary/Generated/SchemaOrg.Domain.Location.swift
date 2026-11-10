extension SchemaOrg.Domain {

    public protocol Location: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Location {

    public var location: SchemaOrg.Range.Location? {
        get { self[first: "location"] }
        set { self[first: "location"] = newValue }
    }
}
