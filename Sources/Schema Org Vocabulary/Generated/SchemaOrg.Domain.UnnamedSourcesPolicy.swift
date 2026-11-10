extension SchemaOrg.Domain {

    public protocol UnnamedSourcesPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.UnnamedSourcesPolicy {

    public var unnamedSourcesPolicy: SchemaOrg.Range.UnnamedSourcesPolicy? {
        get { self[first: "unnamedSourcesPolicy"] }
        set { self[first: "unnamedSourcesPolicy"] = newValue }
    }
}
