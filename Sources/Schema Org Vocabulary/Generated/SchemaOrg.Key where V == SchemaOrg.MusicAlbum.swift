extension SchemaOrg.Key where V == SchemaOrg.MusicAlbum {

    public static var album: Self {
        Self("album")
    }

    public static var albums: Self {
        Self("albums")
    }

    public static var inAlbum: Self {
        Self("inAlbum")
    }

    public static var releaseOf: Self {
        Self("releaseOf")
    }
}
