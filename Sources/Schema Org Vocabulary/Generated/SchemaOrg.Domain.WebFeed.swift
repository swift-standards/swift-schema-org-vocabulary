extension SchemaOrg.Domain {

    public protocol WebFeed: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.WebFeed {

    public var webFeed: SchemaOrg.Range.WebFeed? {
        get { self[first: "webFeed"] }
        set { self[first: "webFeed"] = newValue }
    }
}
