extension SchemaOrg.Domain {

    public protocol WordCount: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.WordCount {

    public var wordCount: Swift.Int? {
        get { self[first: "wordCount"] }
        set { self[first: "wordCount"] = newValue }
    }
}
