extension SchemaOrg.Domain {

    public protocol IsVariantOf: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsVariantOf {

    public var isVariantOf: SchemaOrg.Range.IsVariantOf? {
        get { self[first: "isVariantOf"] }
        set { self[first: "isVariantOf"] = newValue }
    }
}
