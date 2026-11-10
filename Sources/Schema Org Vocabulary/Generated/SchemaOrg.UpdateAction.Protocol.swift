extension SchemaOrg.UpdateAction {

    public protocol `Protocol`: SchemaOrg.Action.`Protocol` {}
}

extension SchemaOrg.UpdateAction.`Protocol` {

    public var collection: SchemaOrg.Thing? {
        get { self[first: "collection"] }
        set { self[first: "collection"] = newValue }
    }

    public var targetCollection: SchemaOrg.Thing? {
        get { self[first: "targetCollection"] }
        set { self[first: "targetCollection"] = newValue }
    }
}
