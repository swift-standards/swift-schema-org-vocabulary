extension SchemaOrg.Domain {

    public protocol KnowsLanguage: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.KnowsLanguage {

    public var knowsLanguage: SchemaOrg.Range.KnowsLanguage? {
        get { self[first: "knowsLanguage"] }
        set { self[first: "knowsLanguage"] = newValue }
    }
}
