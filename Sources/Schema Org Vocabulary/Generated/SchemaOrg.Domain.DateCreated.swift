extension SchemaOrg.Domain {

    public protocol DateCreated: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DateCreated {

    public var dateCreated: SchemaOrg.Range.DateCreated? {
        get { self[first: "dateCreated"] }
        set { self[first: "dateCreated"] = newValue }
    }
}
