extension SchemaOrg.Key where V == SchemaOrg.MusicRecording {

    public static var recordedAs: Self {
        Self("recordedAs")
    }

    public static var tracks: Self {
        Self("tracks")
    }
}
