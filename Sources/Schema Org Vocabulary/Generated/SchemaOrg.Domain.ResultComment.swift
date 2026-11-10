extension SchemaOrg.Domain {

    public protocol ResultComment: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ResultComment {

    public var resultComment: SchemaOrg.Comment? {
        get { self[first: "resultComment"] }
        set { self[first: "resultComment"] = newValue }
    }
}
