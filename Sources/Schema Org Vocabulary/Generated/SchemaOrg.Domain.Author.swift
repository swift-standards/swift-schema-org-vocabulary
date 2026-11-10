extension SchemaOrg.Domain {

    public protocol Author: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Author {

    public var author: SchemaOrg.Range.Author? {
        get { self[first: "author"] }
        set { self[first: "author"] = newValue }
    }
}
