extension SchemaOrg.ReplaceAction {

    public protocol `Protocol`: SchemaOrg.UpdateAction.`Protocol` {}
}

extension SchemaOrg.ReplaceAction.`Protocol` {

    public var replacee: SchemaOrg.Thing? {
        get { self[first: "replacee"] }
        set { self[first: "replacee"] = newValue }
    }

    public var replacer: SchemaOrg.Thing? {
        get { self[first: "replacer"] }
        set { self[first: "replacer"] = newValue }
    }
}
