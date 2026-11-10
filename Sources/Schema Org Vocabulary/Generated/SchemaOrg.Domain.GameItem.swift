extension SchemaOrg.Domain {

    public protocol GameItem: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GameItem {

    public var gameItem: SchemaOrg.Thing? {
        get { self[first: "gameItem"] }
        set { self[first: "gameItem"] = newValue }
    }
}
