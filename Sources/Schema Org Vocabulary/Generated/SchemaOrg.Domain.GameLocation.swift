extension SchemaOrg.Domain {

    public protocol GameLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GameLocation {

    public var gameLocation: SchemaOrg.Range.GameLocation? {
        get { self[first: "gameLocation"] }
        set { self[first: "gameLocation"] = newValue }
    }
}
