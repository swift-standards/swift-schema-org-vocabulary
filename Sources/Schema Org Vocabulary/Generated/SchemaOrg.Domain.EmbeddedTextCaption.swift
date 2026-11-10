extension SchemaOrg.Domain {

    public protocol EmbeddedTextCaption: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EmbeddedTextCaption {

    public var embeddedTextCaption: Swift.String? {
        get { self[first: "embeddedTextCaption"] }
        set { self[first: "embeddedTextCaption"] = newValue }
    }
}
