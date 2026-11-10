extension SchemaOrg.MusicAlbum {

    public protocol `Protocol`:
        SchemaOrg.MusicPlaylist.`Protocol`,
        SchemaOrg.Domain.ByArtist
    {}
}

extension SchemaOrg.MusicAlbum.`Protocol` {

    public var albumProductionType: SchemaOrg.MusicAlbumProductionType? {
        get { self[first: "albumProductionType"] }
        set { self[first: "albumProductionType"] = newValue }
    }

    public var albumRelease: SchemaOrg.MusicRelease? {
        get { self[first: "albumRelease"] }
        set { self[first: "albumRelease"] = newValue }
    }

    public var albumReleaseType: SchemaOrg.MusicAlbumReleaseType? {
        get { self[first: "albumReleaseType"] }
        set { self[first: "albumReleaseType"] = newValue }
    }
}
