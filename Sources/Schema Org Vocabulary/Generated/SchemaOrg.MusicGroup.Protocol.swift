extension SchemaOrg.MusicGroup {

    public protocol `Protocol`:
        SchemaOrg.PerformingGroup.`Protocol`,
        SchemaOrg.Domain.Genre,
        SchemaOrg.Domain.Track,
        SchemaOrg.Domain.Tracks
    {}
}

extension SchemaOrg.MusicGroup.`Protocol` {

    public var album: SchemaOrg.MusicAlbum? {
        get { self[first: "album"] }
        set { self[first: "album"] = newValue }
    }

    public var albums: SchemaOrg.MusicAlbum? {
        get { self[first: "albums"] }
        set { self[first: "albums"] = newValue }
    }

    public var musicGroupMember: SchemaOrg.Person? {
        get { self[first: "musicGroupMember"] }
        set { self[first: "musicGroupMember"] = newValue }
    }
}
