extension SchemaOrg.Domain {

    public protocol DateModified: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DateModified {

    public var dateModified: SchemaOrg.Range.DateModified? {
        get { self[first: "dateModified"] }
        set { self[first: "dateModified"] = newValue }
    }
}
