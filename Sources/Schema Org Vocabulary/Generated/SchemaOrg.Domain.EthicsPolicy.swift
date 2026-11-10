extension SchemaOrg.Domain {

    public protocol EthicsPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EthicsPolicy {

    public var ethicsPolicy: SchemaOrg.Range.EthicsPolicy? {
        get { self[first: "ethicsPolicy"] }
        set { self[first: "ethicsPolicy"] = newValue }
    }
}
