extension SchemaOrg.Domain {

    public protocol RequiresSubscription: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RequiresSubscription {

    public var requiresSubscription: SchemaOrg.Range.RequiresSubscription? {
        get { self[first: "requiresSubscription"] }
        set { self[first: "requiresSubscription"] = newValue }
    }
}
