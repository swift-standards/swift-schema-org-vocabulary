extension SchemaOrg.OnlineStore {

    public protocol `Protocol`: SchemaOrg.OnlineBusiness.`Protocol` {}
}

extension SchemaOrg.OnlineStore.`Protocol` {

    public var isStoreOn: SchemaOrg.OnlineMarketplace? {
        get { self[first: "isStoreOn"] }
        set { self[first: "isStoreOn"] = newValue }
    }
}
