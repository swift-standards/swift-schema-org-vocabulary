extension SchemaOrg.MusicComposition {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Composer
    {}
}

extension SchemaOrg.MusicComposition.`Protocol` {

    public var firstPerformance: SchemaOrg.Event? {
        get { self[first: "firstPerformance"] }
        set { self[first: "firstPerformance"] = newValue }
    }

    public var includedComposition: SchemaOrg.MusicComposition? {
        get { self[first: "includedComposition"] }
        set { self[first: "includedComposition"] = newValue }
    }

    public var iswcCode: Swift.String? {
        get { self[first: "iswcCode"] }
        set { self[first: "iswcCode"] = newValue }
    }

    public var lyricist: SchemaOrg.Person? {
        get { self[first: "lyricist"] }
        set { self[first: "lyricist"] = newValue }
    }

    public var lyrics: SchemaOrg.CreativeWork? {
        get { self[first: "lyrics"] }
        set { self[first: "lyrics"] = newValue }
    }

    public var musicArrangement: SchemaOrg.MusicComposition? {
        get { self[first: "musicArrangement"] }
        set { self[first: "musicArrangement"] = newValue }
    }

    public var musicCompositionForm: Swift.String? {
        get { self[first: "musicCompositionForm"] }
        set { self[first: "musicCompositionForm"] = newValue }
    }

    public var musicalKey: Swift.String? {
        get { self[first: "musicalKey"] }
        set { self[first: "musicalKey"] = newValue }
    }

    public var recordedAs: SchemaOrg.MusicRecording? {
        get { self[first: "recordedAs"] }
        set { self[first: "recordedAs"] = newValue }
    }
}
