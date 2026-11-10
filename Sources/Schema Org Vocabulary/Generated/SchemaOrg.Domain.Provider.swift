extension SchemaOrg.Domain {

    public protocol Provider: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Provider {

    public var provider: SchemaOrg.Range.Provider? {
        get { self[first: "provider"] }
        set { self[first: "provider"] = newValue }
    }
}
