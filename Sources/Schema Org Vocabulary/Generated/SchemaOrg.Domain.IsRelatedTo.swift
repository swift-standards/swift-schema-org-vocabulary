extension SchemaOrg.Domain {

    public protocol IsRelatedTo: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsRelatedTo {

    public var isRelatedTo: SchemaOrg.Range.IsRelatedTo? {
        get { self[first: "isRelatedTo"] }
        set { self[first: "isRelatedTo"] = newValue }
    }
}
