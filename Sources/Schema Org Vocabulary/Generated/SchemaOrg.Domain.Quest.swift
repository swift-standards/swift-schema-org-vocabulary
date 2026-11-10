extension SchemaOrg.Domain {

    public protocol Quest: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Quest {

    public var quest: SchemaOrg.Thing? {
        get { self[first: "quest"] }
        set { self[first: "quest"] = newValue }
    }
}
