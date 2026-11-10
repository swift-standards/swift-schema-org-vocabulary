extension SchemaOrg.Domain {

    public protocol IsSimilarTo: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsSimilarTo {

    public var isSimilarTo: SchemaOrg.Range.IsSimilarTo? {
        get { self[first: "isSimilarTo"] }
        set { self[first: "isSimilarTo"] = newValue }
    }
}
