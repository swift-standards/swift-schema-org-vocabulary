extension SchemaOrg.MusicPlaylist {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Track,
        SchemaOrg.Domain.Tracks
    {}
}

extension SchemaOrg.MusicPlaylist.`Protocol` {

    public var numTracks: Swift.Int? {
        get { self[first: "numTracks"] }
        set { self[first: "numTracks"] = newValue }
    }
}
