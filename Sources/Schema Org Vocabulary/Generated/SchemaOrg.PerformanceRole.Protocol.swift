extension SchemaOrg.PerformanceRole {

    public protocol `Protocol`: SchemaOrg.Role.`Protocol` {}
}

extension SchemaOrg.PerformanceRole.`Protocol` {

    public var characterName: Swift.String? {
        get { self[first: "characterName"] }
        set { self[first: "characterName"] = newValue }
    }
}
