extension SchemaOrg.Domain {

    public protocol StartOffset: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.StartOffset {

    public var startOffset: SchemaOrg.Range.StartOffset? {
        get { self[first: "startOffset"] }
        set { self[first: "startOffset"] = newValue }
    }
}
