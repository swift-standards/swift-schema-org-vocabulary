extension SchemaOrg.OnlineMarketplace {

    public protocol `Protocol`: SchemaOrg.OnlineStore.`Protocol` {}
}

extension SchemaOrg.OnlineMarketplace.`Protocol` {

    public var hasStore: SchemaOrg.OnlineStore? {
        get { self[first: "hasStore"] }
        set { self[first: "hasStore"] = newValue }
    }
}
