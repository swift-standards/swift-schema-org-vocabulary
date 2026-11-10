extension SchemaOrg.Domain {

    public protocol EncodingFormat: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EncodingFormat {

    public var encodingFormat: SchemaOrg.Range.EncodingFormat? {
        get { self[first: "encodingFormat"] }
        set { self[first: "encodingFormat"] = newValue }
    }
}
