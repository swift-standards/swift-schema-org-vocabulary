extension SchemaOrg.SearchAction {

    public protocol `Protocol`: SchemaOrg.Action.`Protocol` {}
}

extension SchemaOrg.SearchAction.`Protocol` {

    public var query: Swift.String? {
        get { self[first: "query"] }
        set { self[first: "query"] = newValue }
    }
}
