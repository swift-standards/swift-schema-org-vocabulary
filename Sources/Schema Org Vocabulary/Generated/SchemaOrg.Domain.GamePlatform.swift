extension SchemaOrg.Domain {

    public protocol GamePlatform: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GamePlatform {

    public var gamePlatform: SchemaOrg.Range.GamePlatform? {
        get { self[first: "gamePlatform"] }
        set { self[first: "gamePlatform"] = newValue }
    }
}
