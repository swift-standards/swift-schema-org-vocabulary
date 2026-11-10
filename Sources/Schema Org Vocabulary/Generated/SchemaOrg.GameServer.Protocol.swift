extension SchemaOrg.GameServer {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.GameServer.`Protocol` {

    public var game: SchemaOrg.VideoGame? {
        get { self[first: "game"] }
        set { self[first: "game"] = newValue }
    }

    public var playersOnline: Swift.Int? {
        get { self[first: "playersOnline"] }
        set { self[first: "playersOnline"] = newValue }
    }

    public var serverStatus: SchemaOrg.GameServerStatus? {
        get { self[first: "serverStatus"] }
        set { self[first: "serverStatus"] = newValue }
    }
}
