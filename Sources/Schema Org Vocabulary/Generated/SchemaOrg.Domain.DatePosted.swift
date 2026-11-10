extension SchemaOrg.Domain {

    public protocol DatePosted: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DatePosted {

    public var datePosted: SchemaOrg.Range.DatePosted? {
        get { self[first: "datePosted"] }
        set { self[first: "datePosted"] = newValue }
    }
}
