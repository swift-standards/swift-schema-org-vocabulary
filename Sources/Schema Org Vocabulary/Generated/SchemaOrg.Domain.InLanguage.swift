extension SchemaOrg.Domain {

    public protocol InLanguage: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.InLanguage {

    public var inLanguage: SchemaOrg.Range.InLanguage? {
        get { self[first: "inLanguage"] }
        set { self[first: "inLanguage"] = newValue }
    }
}
