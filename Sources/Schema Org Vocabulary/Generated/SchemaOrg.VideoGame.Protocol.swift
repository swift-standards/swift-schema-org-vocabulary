extension SchemaOrg.VideoGame {

    public protocol `Protocol`:
        SchemaOrg.Game.`Protocol`,
        SchemaOrg.SoftwareApplication.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.CheatCode,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.GamePlatform,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.PlayMode,
        SchemaOrg.Domain.Trailer
    {}
}

extension SchemaOrg.VideoGame.`Protocol` {

    public var gameEdition: Swift.String? {
        get { self[first: "gameEdition"] }
        set { self[first: "gameEdition"] = newValue }
    }

    public var gameServer: SchemaOrg.GameServer? {
        get { self[first: "gameServer"] }
        set { self[first: "gameServer"] = newValue }
    }

    public var gameTip: SchemaOrg.CreativeWork? {
        get { self[first: "gameTip"] }
        set { self[first: "gameTip"] = newValue }
    }
}
