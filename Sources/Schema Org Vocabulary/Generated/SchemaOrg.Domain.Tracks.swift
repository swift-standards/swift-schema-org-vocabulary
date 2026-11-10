extension SchemaOrg.Domain {

    public protocol Tracks: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Tracks {

    public var tracks: SchemaOrg.MusicRecording? {
        get { self[first: "tracks"] }
        set { self[first: "tracks"] = newValue }
    }
}
