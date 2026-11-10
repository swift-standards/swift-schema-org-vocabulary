extension SchemaOrg.MusicRelease {

    public protocol `Protocol`:
        SchemaOrg.MusicPlaylist.`Protocol`,
        SchemaOrg.Domain.Duration
    {}
}

extension SchemaOrg.MusicRelease.`Protocol` {

    public var catalogNumber: Swift.String? {
        get { self[first: "catalogNumber"] }
        set { self[first: "catalogNumber"] = newValue }
    }

    public var creditedTo: SchemaOrg.Range.CreditedTo? {
        get { self[first: "creditedTo"] }
        set { self[first: "creditedTo"] = newValue }
    }

    public var musicReleaseFormat: SchemaOrg.MusicReleaseFormatType? {
        get { self[first: "musicReleaseFormat"] }
        set { self[first: "musicReleaseFormat"] = newValue }
    }

    public var recordLabel: SchemaOrg.Organization? {
        get { self[first: "recordLabel"] }
        set { self[first: "recordLabel"] = newValue }
    }

    public var releaseOf: SchemaOrg.MusicAlbum? {
        get { self[first: "releaseOf"] }
        set { self[first: "releaseOf"] = newValue }
    }
}
