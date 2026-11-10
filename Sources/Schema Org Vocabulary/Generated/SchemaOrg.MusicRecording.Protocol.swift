extension SchemaOrg.MusicRecording {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.ByArtist,
        SchemaOrg.Domain.Duration
    {}
}

extension SchemaOrg.MusicRecording.`Protocol` {

    public var inAlbum: SchemaOrg.MusicAlbum? {
        get { self[first: "inAlbum"] }
        set { self[first: "inAlbum"] = newValue }
    }

    public var inPlaylist: SchemaOrg.MusicPlaylist? {
        get { self[first: "inPlaylist"] }
        set { self[first: "inPlaylist"] = newValue }
    }

    public var isrcCode: Swift.String? {
        get { self[first: "isrcCode"] }
        set { self[first: "isrcCode"] = newValue }
    }

    public var recordingOf: SchemaOrg.MusicComposition? {
        get { self[first: "recordingOf"] }
        set { self[first: "recordingOf"] = newValue }
    }
}
