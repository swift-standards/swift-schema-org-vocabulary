extension SchemaOrg.Key where V == SchemaOrg.MusicComposition {

    public static var includedComposition: Self {
        Self("includedComposition")
    }

    public static var musicArrangement: Self {
        Self("musicArrangement")
    }

    public static var recordingOf: Self {
        Self("recordingOf")
    }
}
