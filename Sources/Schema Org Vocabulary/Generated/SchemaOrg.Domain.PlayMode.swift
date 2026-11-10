extension SchemaOrg.Domain {

    public protocol PlayMode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PlayMode {

    public var playMode: SchemaOrg.GamePlayMode? {
        get { self[first: "playMode"] }
        set { self[first: "playMode"] = newValue }
    }
}
