extension SchemaOrg.Domain {

    public protocol AvailableLanguage: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AvailableLanguage {

    public var availableLanguage: SchemaOrg.Range.AvailableLanguage? {
        get { self[first: "availableLanguage"] }
        set { self[first: "availableLanguage"] = newValue }
    }
}
