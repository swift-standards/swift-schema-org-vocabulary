extension SchemaOrg.VideoObject {

    public protocol `Protocol`:
        SchemaOrg.MediaObject.`Protocol`,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.Actors,
        SchemaOrg.Domain.Caption,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Directors,
        SchemaOrg.Domain.EmbeddedTextCaption,
        SchemaOrg.Domain.MusicBy,
        SchemaOrg.Domain.Transcript
    {}
}

extension SchemaOrg.VideoObject.`Protocol` {

    public var videoFrameSize: Swift.String? {
        get { self[first: "videoFrameSize"] }
        set { self[first: "videoFrameSize"] = newValue }
    }

    public var videoQuality: Swift.String? {
        get { self[first: "videoQuality"] }
        set { self[first: "videoQuality"] = newValue }
    }
}
