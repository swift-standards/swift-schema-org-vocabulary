extension SchemaOrg.Domain {

    public protocol MusicBy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MusicBy {

    public var musicBy: SchemaOrg.Range.MusicBy? {
        get { self[first: "musicBy"] }
        set { self[first: "musicBy"] = newValue }
    }
}
